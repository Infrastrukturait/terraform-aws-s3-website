variable "region" {
  description = "AWS Region"
  default     = "eu-central-1"
}

variable "domain" {
  type        = string
}

variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket to create."
}

variable "acm-certificate-arn" {
  type        = string
  default     = ""
}

variable "routing_rules" {
  type        = string
  default     = ""
}

variable "default-root-object" {
  type        = string
  description = "The object that you want CloudFront to return (for example, index.html) when an end user requests the root URL."
  default     = "index.html"
}

variable "not-found-response-path" {
  type        = string
  description = "The HTTP status code that you want CloudFront to return with the custom error page to the viewer."
  default     = "/404.html"
}

variable "not-found-response-code" {
  type        = string
  description = "The path of the custom error page (for example, /custom_404.html)."
  default     = "200"
}

variable "block_public_acls" {
  type        = bool  
  description = "Enable block public ACLs on S3 bucket"
  default     = true
}

variable "block_public_policy" {
  type        = bool
  description = "Enable block public access on S3 bucket"
  default     = true
}

variable "minimum_client_tls_protocol_version" {
  type        = string
  description = "CloudFront viewer certificate minimum protocol version"
  default     = "TLSv1.2_2021"
}

variable "price_class" {
  type        = string
  description = "CloudFront price class"
  default     = "PriceClass_200"
}

variable "ipv6" {
  type        = bool
  description = "Enable IPv6 on CloudFront distribution"
  default     = false
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags map for resources"
}