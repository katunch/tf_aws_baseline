variable "hosted_zone_name" {
  type        = string
  description = "FQDN for the hosted zone"
}

variable "acl_allow_ingress_tcp_ports" {
  type        = list(number)
  description = "List of TCP ports to allow inbound traffic on. Everything other will be denied for public access."
  default     = [80, 443]
}