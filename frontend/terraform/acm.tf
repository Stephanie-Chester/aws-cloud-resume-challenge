# Issue SSL Certificate through Amazon
resource "aws_acm_certificate" "mycert" {
  domain_name       = var.domain_name_root
  validation_method = "DNS"
  lifecycle {
    create_before_destroy = true
  }
}