locals {
  env_vars = read_terragrunt_config("env.hcl")

  environment        = local.env_vars.locals.environment
  vpc_cidr           = local.env_vars.locals.vpc_cidr
  az_list            = local.env_vars.locals.az_list
  public_subnet_list = local.env_vars.locals.public_subnet_list
}

terraform {
  # monolithic module
  source = "tfr:///terraform-aws-modules/vpc/aws?version=3.18.1"
}

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "aws" {
  region = "us-east-1"
}
EOF
}

inputs = {
  name           = "${local.environment}-vpc"
  cidr           = local.vpc_cidr
  azs            = local.az_list
  public_subnets = local.public_subnet_list
  tags           = {
    Environment = local.environment
  }
}