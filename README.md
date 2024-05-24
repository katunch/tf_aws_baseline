## Requirements

| Name                                                    | Version |
| ------------------------------------------------------- | ------- |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5    |

## Providers

| Name                                                                            | Version |
| ------------------------------------------------------------------------------- | ------- |
| <a name="provider_aws.default"></a> [aws.default](#provider\_aws.default)       | ~> 5    |
| <a name="provider_aws.us-east-1"></a> [aws.us-east-1](#provider\_aws.us-east-1) | ~> 5    |

## Modules

No modules.

## Resources

| Name                                                                                                                                                   | Type        |
| ------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------- |
| [aws_acm_certificate.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate)                             | resource    |
| [aws_acm_certificate.us-east-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate)                           | resource    |
| [aws_acm_certificate_validation.dev](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation)           | resource    |
| [aws_acm_certificate_validation.dev-us-east-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource    |
| [aws_eip.nat](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip)                                                         | resource    |
| [aws_lb.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb)                                                       | resource    |
| [aws_lb_listener.http2https](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener)                                  | resource    |
| [aws_lb_listener.https](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener)                                       | resource    |
| [aws_nat_gateway.nat](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway)                                         | resource    |
| [aws_route53_record.acm_validation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record)                        | resource    |
| [aws_route53_record.acm_validation-us-east-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record)              | resource    |
| [aws_route53_zone.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone)                                   | resource    |
| [aws_route_table.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table)                                     | resource    |
| [aws_route_table_association.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association)             | resource    |
| [aws_security_group.alb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)                                   | resource    |
| [aws_security_group.vpc-access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)                            | resource    |
| [aws_subnet.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet)                                               | resource    |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones)                  | data source |
| [aws_subnets.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnets)                                          | data source |
| [aws_vpc.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc)                                                  | data source |

## Inputs

| Name                                                                                   | Description              | Type     | Default | Required |
| -------------------------------------------------------------------------------------- | ------------------------ | -------- | ------- | :------: |
| <a name="input_hosted_zone_name"></a> [hosted\_zone\_name](#input\_hosted\_zone\_name) | FQDN for the hosted zone | `string` | n/a     |   yes    |

## Outputs

| Name                                                                                                                    | Description |
| ----------------------------------------------------------------------------------------------------------------------- | ----------- |
| <a name="output_certificate_arn"></a> [certificate\_arn](#output\_certificate\_arn)                                     | n/a         |
| <a name="output_certificate_arn_us_east_1"></a> [certificate\_arn\_us\_east\_1](#output\_certificate\_arn\_us\_east\_1) | n/a         |
| <a name="output_default_security_group_id"></a> [default\_security\_group\_id](#output\_default\_security\_group\_id)   | n/a         |
| <a name="output_https_listener_arn"></a> [https\_listener\_arn](#output\_https\_listener\_arn)                          | n/a         |
| <a name="output_lb_dns_name"></a> [lb\_dns\_name](#output\_lb\_dns\_name)                                               | n/a         |
| <a name="output_lb_zone_id"></a> [lb\_zone\_id](#output\_lb\_zone\_id)                                                  | n/a         |
| <a name="output_name_servers"></a> [name\_servers](#output\_name\_servers)                                              | n/a         |
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids)                          | n/a         |
| <a name="output_route53_zone_id"></a> [route53\_zone\_id](#output\_route53\_zone\_id)                                   | n/a         |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id)                                                                | n/a         |
## Requirements

| Name                                                    | Version |
| ------------------------------------------------------- | ------- |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5    |

## Providers

| Name                                                                            | Version |
| ------------------------------------------------------------------------------- | ------- |
| <a name="provider_aws.default"></a> [aws.default](#provider\_aws.default)       | ~> 5    |
| <a name="provider_aws.us-east-1"></a> [aws.us-east-1](#provider\_aws.us-east-1) | ~> 5    |

## Modules

No modules.

## Resources

| Name                                                                                                                                                   | Type        |
| ------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------- |
| [aws_acm_certificate.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate)                             | resource    |
| [aws_acm_certificate.us-east-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate)                           | resource    |
| [aws_acm_certificate_validation.dev](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation)           | resource    |
| [aws_acm_certificate_validation.dev-us-east-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource    |
| [aws_eip.nat](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip)                                                         | resource    |
| [aws_lb.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb)                                                       | resource    |
| [aws_lb_listener.http2https](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener)                                  | resource    |
| [aws_lb_listener.https](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener)                                       | resource    |
| [aws_nat_gateway.nat](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway)                                         | resource    |
| [aws_route53_record.acm_validation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record)                        | resource    |
| [aws_route53_record.acm_validation-us-east-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record)              | resource    |
| [aws_route53_zone.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone)                                   | resource    |
| [aws_route_table.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table)                                     | resource    |
| [aws_route_table_association.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association)             | resource    |
| [aws_security_group.alb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)                                   | resource    |
| [aws_security_group.vpc-access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)                            | resource    |
| [aws_subnet.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet)                                               | resource    |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones)                  | data source |
| [aws_subnets.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnets)                                          | data source |
| [aws_vpc.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc)                                                  | data source |

## Inputs

| Name                                                                                   | Description              | Type     | Default | Required |
| -------------------------------------------------------------------------------------- | ------------------------ | -------- | ------- | :------: |
| <a name="input_hosted_zone_name"></a> [hosted\_zone\_name](#input\_hosted\_zone\_name) | FQDN for the hosted zone | `string` | n/a     |   yes    |

## Outputs

| Name                                                                                                                    | Description                                  |
| ----------------------------------------------------------------------------------------------------------------------- | -------------------------------------------- |
| <a name="output_certificate_arn"></a> [certificate\_arn](#output\_certificate\_arn)                                     | Certificate ARN                              |
| <a name="output_certificate_arn_us_east_1"></a> [certificate\_arn\_us\_east\_1](#output\_certificate\_arn\_us\_east\_1) | Certificate ARN in us-east-1 region          |
| <a name="output_default_security_group_id"></a> [default\_security\_group\_id](#output\_default\_security\_group\_id)   | ID of the default security group             |
| <a name="output_https_listener_arn"></a> [https\_listener\_arn](#output\_https\_listener\_arn)                          | ARN of the HTTPS listener                    |
| <a name="output_lb_dns_name"></a> [lb\_dns\_name](#output\_lb\_dns\_name)                                               | DNS name of the load balancer                |
| <a name="output_lb_zone_id"></a> [lb\_zone\_id](#output\_lb\_zone\_id)                                                  | Zone ID of the load balancer                 |
| <a name="output_name_servers"></a> [name\_servers](#output\_name\_servers)                                              | The name servers for the created hosted zone |
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids)                          | IDs of the private subnets                   |
| <a name="output_route53_zone_id"></a> [route53\_zone\_id](#output\_route53\_zone\_id)                                   | The ID of the created hosted zone            |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id)                                                                | ID of the VPC                                |
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws.default"></a> [aws.default](#provider\_aws.default) | ~> 5 |
| <a name="provider_aws.us-east-1"></a> [aws.us-east-1](#provider\_aws.us-east-1) | ~> 5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate.us-east-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.dev](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_acm_certificate_validation.dev-us-east-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_eip.nat](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_lb.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.http2https](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_listener.https](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_nat_gateway.nat](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route53_record.acm_validation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.acm_validation-us-east-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |
| [aws_route_table.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.alb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.vpc-access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_subnets.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnets) | data source |
| [aws_vpc.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_hosted_zone_name"></a> [hosted\_zone\_name](#input\_hosted\_zone\_name) | FQDN for the hosted zone | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_EIP"></a> [EIP](#output\_EIP) | ID of the Elastic IP of the Nat Gateway |
| <a name="output_certificate_arn"></a> [certificate\_arn](#output\_certificate\_arn) | Certificate ARN |
| <a name="output_certificate_arn_us_east_1"></a> [certificate\_arn\_us\_east\_1](#output\_certificate\_arn\_us\_east\_1) | Certificate ARN in us-east-1 region |
| <a name="output_default_security_group_id"></a> [default\_security\_group\_id](#output\_default\_security\_group\_id) | ID of the default security group |
| <a name="output_https_listener_arn"></a> [https\_listener\_arn](#output\_https\_listener\_arn) | ARN of the HTTPS listener |
| <a name="output_lb_dns_name"></a> [lb\_dns\_name](#output\_lb\_dns\_name) | DNS name of the load balancer |
| <a name="output_lb_zone_id"></a> [lb\_zone\_id](#output\_lb\_zone\_id) | Zone ID of the load balancer |
| <a name="output_name_servers"></a> [name\_servers](#output\_name\_servers) | The name servers for the created hosted zone |
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids) | IDs of the private subnets |
| <a name="output_route53_zone_id"></a> [route53\_zone\_id](#output\_route53\_zone\_id) | The ID of the created hosted zone |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | ID of the VPC |
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws.default"></a> [aws.default](#provider\_aws.default) | ~> 5 |
| <a name="provider_aws.us-east-1"></a> [aws.us-east-1](#provider\_aws.us-east-1) | ~> 5 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate.us-east-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.dev](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_acm_certificate_validation.dev-us-east-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_eip.nat](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_lb.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.http2https](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_listener.https](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_nat_gateway.nat](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route53_record.acm_validation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.acm_validation-us-east-1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |
| [aws_route_table.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.alb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.vpc-access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_subnets.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnets) | data source |
| [aws_vpc.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_hosted_zone_name"></a> [hosted\_zone\_name](#input\_hosted\_zone\_name) | FQDN for the hosted zone | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_EIP"></a> [EIP](#output\_EIP) | Elastic IP of the Nat Gateway |
| <a name="output_certificate_arn"></a> [certificate\_arn](#output\_certificate\_arn) | Certificate ARN |
| <a name="output_certificate_arn_us_east_1"></a> [certificate\_arn\_us\_east\_1](#output\_certificate\_arn\_us\_east\_1) | Certificate ARN in us-east-1 region |
| <a name="output_default_security_group_id"></a> [default\_security\_group\_id](#output\_default\_security\_group\_id) | ID of the default security group |
| <a name="output_https_listener_arn"></a> [https\_listener\_arn](#output\_https\_listener\_arn) | ARN of the HTTPS listener |
| <a name="output_lb_dns_name"></a> [lb\_dns\_name](#output\_lb\_dns\_name) | DNS name of the load balancer |
| <a name="output_lb_zone_id"></a> [lb\_zone\_id](#output\_lb\_zone\_id) | Zone ID of the load balancer |
| <a name="output_name_servers"></a> [name\_servers](#output\_name\_servers) | The name servers for the created hosted zone |
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids) | IDs of the private subnets |
| <a name="output_route53_zone_id"></a> [route53\_zone\_id](#output\_route53\_zone\_id) | The ID of the created hosted zone |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | ID of the VPC |
