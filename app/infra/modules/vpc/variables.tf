variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_1" {
  description = "CIDR for public subnet 1"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_cidr_2" {
  description = "CIDR for public subnet 2"
  type        = string
  default     = "10.0.2.0/24"
}

variable "az_1" {
  description = "AZ for first subnet"
  type        = string
  default     = "eu-west-1a"
}

variable "az_2" {
  description = "AZ for second subnet"
  type        = string
  default     = "eu-west-1b"
}

variable "route_table_cidr" {
  description = "CIDR for route to internet gateway"
  type        = string
  default     = "0.0.0.0/0"
}
