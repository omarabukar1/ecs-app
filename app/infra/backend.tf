terraform {
  backend "s3" {
    bucket         = "omarsapp-tfstate-eu-west-1"
    key            = "ecs-app/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
