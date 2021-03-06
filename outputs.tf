output "mx" {
  value       = aws_route53_record.mx.name
  description = "interpolated value of `aws_route53_record.mx.name`"
}

output "autodiscover" {
  value       = aws_route53_record.autodiscover.name
  description = "interpolated value of `aws_route53_record.autodiscover.name`"
}

output "dkim" {
  value       = aws_ses_domain_dkim.dkim.dkim_tokens
  description = "interpolated value of `aws_ses_domain_dkim.dkim.dkim_tokens`"
}

output "zone_apex_txt_record" {
  value       = aws_route53_record.zone_apex_txt.name
  description = "interpolated value of `aws_route53_record.zone_apex_txt.name`"
}

output "dmarc" {
  value       = aws_route53_record.dmarc.name
  description = "interpolated value of `aws_route53_record.dmarc.name`"
}

output "mx_record" {
  value       = local.mx_record
  description = "interpolated value of `local.mx_record`"
}

output "autodiscover_record" {
  value       = local.autodiscover_record
  description = "interpolated value of `local.autodiscover_record`"
}

output "zone_name" {
  value       = local.zone_name
  description = "interpolated value of `local.zone_name`"
}

output "domain_identity_arn" {
  value       = aws_ses_domain_identity.identity.arn
  description = "interpolated value of `aws_ses_domain_identity.identity.arn`"
}

output "domain_identity_verification_token" {
  value       = aws_ses_domain_identity.identity.verification_token
  description = "interpolated value of `aws_ses_domain_identity.identity.verification_token`"
}
