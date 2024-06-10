terraform {
  required_providers {
    aws = {
      source                = "hashicorp/aws"
      version               = "~> 5"
      configuration_aliases = [aws.default, aws.us-east-1]
    }
  }
}

## Setup private subnets
data "aws_vpc" "default" {
  provider = aws.default
  default  = true
}

data "aws_availability_zones" "available" {
  provider = aws.default
  state    = "available"
}

data "aws_subnets" "default" {
  provider = aws.default
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
  filter {
    name   = "tag:Name"
    values = ["public*"]
  }
}

resource "aws_subnet" "private" {
  provider                = aws.default
  vpc_id                  = data.aws_vpc.default.id
  count                   = 3
  cidr_block              = cidrsubnet(data.aws_vpc.default.cidr_block, 4, count.index + length(data.aws_subnets.default.ids))
  availability_zone       = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = false
  tags = {
    Name              = "private-${count.index + 1}"
    Terraform-Project = "baseline"
  }
}

## Setup NAT Gateway
resource "aws_eip" "nat" {
  provider = aws.default
}

resource "aws_nat_gateway" "nat" {
  provider      = aws.default
  allocation_id = aws_eip.nat.id
  subnet_id     = data.aws_subnets.default.ids[0]
  tags = {
    Name              = "nat"
    Terraform-Project = "baseline"
  }
}

## Route Tables
resource "aws_route_table" "private" {
  provider = aws.default
  vpc_id   = data.aws_vpc.default.id
  tags = {
    Name              = "private"
    Terraform-Project = "baseline"
  }

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }
}

resource "aws_route_table_association" "private" {
  provider       = aws.default
  count          = length(aws_subnet.private)
  subnet_id      = aws_subnet.private[count.index].id
  route_table_id = aws_route_table.private.id
}


## Security Groups
resource "aws_security_group" "vpc-access" {
  provider    = aws.default
  name        = "vpc-access"
  description = "allows all traffic within the VPC and from the VPC to the internet"
  vpc_id      = data.aws_vpc.default.id
  tags = {
    Terraform-Project = "baseline"
  }
  ingress {
    description = "allow traffic within the VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [data.aws_vpc.default.cidr_block]
  }
  egress {
    description = "allow traffic from the VPC to the internet"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

## Route 53 and Certificate Manager
resource "aws_route53_zone" "default" {
  provider = aws.default
  name     = var.hosted_zone_name
}

resource "aws_acm_certificate" "default" {
  provider                  = aws.default
  domain_name               = var.hosted_zone_name
  subject_alternative_names = ["*.${var.hosted_zone_name}"]
  validation_method         = "DNS"
}

resource "aws_acm_certificate" "us-east-1" {
  provider                  = aws.us-east-1
  domain_name               = var.hosted_zone_name
  subject_alternative_names = ["*.${var.hosted_zone_name}"]
  validation_method         = "DNS"
}

resource "aws_route53_record" "acm_validation" {
  provider = aws.default
  for_each = {
    for record in aws_acm_certificate.default.domain_validation_options : record.domain_name => {
      name   = record.resource_record_name
      record = record.resource_record_value
      type   = record.resource_record_type
    }
  }
  allow_overwrite = true
  zone_id         = aws_route53_zone.default.zone_id
  name            = each.value.name
  type            = each.value.type
  records         = [each.value.record]
  ttl             = 60
}

resource "aws_route53_record" "acm_validation-us-east-1" {
  provider = aws.us-east-1
  for_each = {
    for record in aws_acm_certificate.us-east-1.domain_validation_options : record.domain_name => {
      name   = record.resource_record_name
      record = record.resource_record_value
      type   = record.resource_record_type
    }
  }
  allow_overwrite = true
  zone_id         = aws_route53_zone.default.zone_id
  name            = each.value.name
  type            = each.value.type
  records         = [each.value.record]
  ttl             = 60
}

resource "aws_acm_certificate_validation" "dev" {
  provider                = aws.default
  certificate_arn         = aws_acm_certificate.default.arn
  validation_record_fqdns = [for record in aws_route53_record.acm_validation : record.fqdn]
}
resource "aws_acm_certificate_validation" "dev-us-east-1" {
  provider                = aws.us-east-1
  certificate_arn         = aws_acm_certificate.us-east-1.arn
  validation_record_fqdns = [for record in aws_route53_record.acm_validation-us-east-1 : record.fqdn]
}

## Application Load Balancer
resource "aws_security_group" "alb" {
  provider    = aws.default
  name        = "alb"
  description = "allow traffic to the ALB"
  vpc_id      = data.aws_vpc.default.id
  tags = {
    Terraform-Project = "baseline"
  }
  ingress {
    description = "allow traffic from the internet to the ALB on port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "allow traffic from the internet to the ALB on port 443"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "allow traffic from the ALB to the VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [data.aws_vpc.default.cidr_block]
  }
}

resource "aws_lb" "default" {
  provider                   = aws.default
  name                       = "default"
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.alb.id]
  subnets                    = data.aws_subnets.default.ids
  drop_invalid_header_fields = true
  tags = {
    Terraform-Project = "baseline"
  }
}

resource "aws_lb_listener" "http2https" {
  provider          = aws.default
  load_balancer_arn = aws_lb.default.arn
  port              = "80"
  protocol          = "HTTP"
  default_action {
    type = "redirect"
    redirect {
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }
}

resource "aws_lb_listener" "https" {
  provider          = aws.default
  load_balancer_arn = aws_lb.default.arn
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-2021-06"
  certificate_arn   = aws_acm_certificate.default.arn
  default_action {
    type = "redirect"
    redirect {
      host        = "www.software-brauerei.ch"
      port        = "443"
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }
}