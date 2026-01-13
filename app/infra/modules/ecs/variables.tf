variable "vpc_id" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "alb_sg_id" {
  type = string
}

variable "target_group_arn" {
  type = string
}

variable "ecr_repo_name" {
  description = "ECR repository name"
  type        = string
}

variable "image_tag" {
  description = "Image tag to use (defaults to 'latest' for local dev)"
  type        = string
  default     = "latest"
}
