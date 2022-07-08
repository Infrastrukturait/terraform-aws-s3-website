output "website_cdn_hostname" {
  value       = module.app_static_website.website_cdn_hostname
}

output "website_cdn_id" {
  value       = module.app_static_website.website_cdn_id
}

output "website_cdn_arn" {
  value       = module.app_static_website.website_cdn_arn
}

output "website_cdn_zone_id" {
  value       = module.app_static_website.website_cdn_zone_id
}

output "website_bucket_id" {
  value       = module.app_static_website.website_bucket_id
}

output "website_bucket_arn" {
  value       = module.app_static_website.website_bucket_arn
}

output "website_cert_arn" {
  value      = aws_acm_certificate.cert.arn
}
