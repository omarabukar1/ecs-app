variable "project_name" {
  type    = string
  default = "ecs-app"
}

variable "container_image" {
  type    = string
  default = "816069130849.dkr.ecr.eu-west-1.amazonaws.com/ecs-app:latest"
}

# variable "cidr_block" {
#   description = "CIDR block for the VPC"
#   type        = string
#   default     = "10.0.0.0/16"
# }

variable "domain_name" {
  type        = string
  description = "The HTTPS domain"
  default = "tm.omarsapp.com"
}

variable "image_tag" {
  description = "ECR image tag to use (defaults to 'latest' for local dev, GitHub Actions will pass commit SHA)"
  type        = string
  default     = "latest"
}
 