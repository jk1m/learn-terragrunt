locals {
  environment = "dev"

  vpc_cidr = "10.0.0.0/16"
  
  az_list = [
    "us-east-1a",
    "us-east-1b",
    "us-east-1c"
  ]

  public_subnet_list = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24"
  ]
}