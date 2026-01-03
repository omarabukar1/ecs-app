data "aws_acm_certificate" "this" {
  domain      = var.domain_name
  statuses    = ["ISSUED"]
  most_recent = true
}

# resource "aws_acm_certificate" "this" {
#   domain_name       = var.domain_name
#   validation_method = "DNS"
# }
