# monolithic module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.18.1"

  name = "${var.environment}-vpc"
  cidr = var.vpc_cidr

  azs            = var.az_list
  public_subnets = var.public_subnet_list
}
