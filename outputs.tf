output "name_servers" {
  value = aws_route53_zone.default.name_servers
  description = "The name servers for the created hosted zone"
}

output "route53_zone_id" {
  value = aws_route53_zone.default.zone_id
  description = "The ID of the created hosted zone"
}

output "certificate_arn" {
  value = aws_acm_certificate.default.arn
  description = "Certificate ARN"
}

output "certificate_arn_us_east_1" {
  value = aws_acm_certificate.us-east-1.arn
  description = "Certificate ARN in us-east-1 region"
}

output "lb_dns_name" {
  value = aws_lb.default.dns_name
  description = "DNS name of the load balancer"
}

output "lb_zone_id" {
  value = aws_lb.default.zone_id
  description = "Zone ID of the load balancer"
}

output "https_listener_arn" {
  value = aws_lb_listener.https.arn
  description = "ARN of the HTTPS listener"
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
  description = "IDs of the private subnets"
}

output "vpc_id" {
  value = data.aws_vpc.default.id
  description = "ID of the VPC"
}

output "default_security_group_id" {
  value = aws_security_group.vpc-access.id
  description = "ID of the default security group"
}

output "EIP" {
  value = aws_eip.nat.public_ip
  description = "Elastic IP of the Nat Gateway"
}