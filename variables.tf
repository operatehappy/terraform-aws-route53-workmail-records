variable "zone_id" {
  type        = string
  description = "ID of the DNS Zone to store Records in"
}

variable "record_ttl" {
  type        = string
  description = "TTL for all DNS records"
  default     = 86400
}

variable "workmail_zone" {
  type        = string
  description = "AWS Zone of the WorkMail Organization"
  default     = "us-east-1"
}

variable "mx_priority" {
  type        = string
  description = "MX Priority"
  default     = 10
}

variable "spf_record" {
  type        = list(string)
  description = "SPF TXT Record"
  default     = ["v=spf1 include:amazonses.com ~all;"]
}

variable "apex_txt_record_append" {
  type        = list(string)
  description = "additional Domain Apex TXT Record data"
  default     = []
}

variable "dmarc_record" {
  type        = string
  description = "DMARC TXT Record"
  default     = "v=DMARC1;p=quarantine;pct=100;fo=1;"
}

data "aws_route53_zone" "zone" {
  zone_id = var.zone_id
}

locals {
  mx_record            = "${var.mx_priority} inbound-smtp.${var.workmail_zone}.amazonaws.com."
  autodiscover_record  = "autodiscover.mail.${var.workmail_zone}.awsapps.com."
  zone_apex_txt_record = concat(var.spf_record, var.apex_txt_record_append)
  zone_name            = data.aws_route53_zone.zone.name // NOTE: trailing period is added by data source
}
