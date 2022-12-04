variable "environment" {
  type        = string
  description = "The name of the environment"
  default     = "dev"
}

variable "vpc_cidr" {
  type        = string
  description = "The VPC CIDR"
  default     = "10.0.0.0/16"
}

variable "az_list" {
  type        = list(string)
  description = "A list of availability zones"
  default = [
    "us-east-1a",
    "us-east-1b",
    "us-east-1c"
  ]
}

variable "public_subnet_list" {
  type        = list(string)
  description = "A list of public subnet CIDRs"
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24"
  ]
}