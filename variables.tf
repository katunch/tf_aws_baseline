variable "route53_hosted_zone_id" {
  type        = string
  description = "The ID of the hosted zone to create the record in"
}

variable "hosted_zone_name" {
  type        = string
  description = "FQDN for the hosted zone"
}