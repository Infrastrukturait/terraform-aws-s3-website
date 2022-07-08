module "app_static_website_label" {
  source   = "cloudposse/label/null"
  version = "v0.25.0"

  namespace  = "app"
  stage      = "prod"
  name       = "${var.name}"
  delimiter  = "-"

  tags = {
    "Domain"       = "${var.domain}",
    "BusinessUnit" = "XYZ",
    "Snapshot"     = "true"
  }
}

resource "aws_acm_certificate" "cert" {
  domain_name       = "${var.domain}"
  validation_method = "DNS"

  tags = module.app_static_website_label.tags  

  lifecycle {
    create_before_destroy = true
  }
}

module "app_static_website" {
  source               = "../../"
  domain               = "${var.domain}"
  acm_certificate_arn  = aws_acm_certificate.cert.arn
  bucket_name          = join(module.app_static_website_label.delimiter, [module.app_static_website_label.namespace, module.app_static_website_label.stage, var.name, "origin"])
  tags                 = module.app_static_website_label.tags
}
