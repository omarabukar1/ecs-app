module "vpc" {
  source   = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
}
module "acm" {
  source      = "./modules/acm"
  domain_name = "tm.omarsapp.com"
#  hosted_zone_id = "Z10324531O7O2L3BQ1AJ4"
}

module "alb" {
  source            = "./modules/alb"
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  certificate_arn   = module.acm.certificate_arn
}

module "ecs" {
  source = "./modules/ecs"
  image_uri        = var.image_uri
  vpc_id           = module.vpc.vpc_id
  subnet_ids       = module.vpc.public_subnet_ids
  alb_sg_id        = module.alb.alb_sg_id
  target_group_arn = module.alb.target_group_arn
}

module "ecr" {
  source    = "./modules/ecr"
  repo_name = "ecs-app"
}

# data "aws_acm_certificate" "this" {
#   domain      = var.domain_name
#   statuses    = ["ISSUED"]
#   most_recent = true
# }

# module "acm" {
#   source      = "./modules/acm"
#   domain_name = "tm.omarsapp.com"
# #  hosted_zone_id = "Z10324531O7O2L3BQ1AJ4"
# }
