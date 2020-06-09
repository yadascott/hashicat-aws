module "vpc" {
  source  = "app.terraform.io/yadalab/vpc/aws"
  version = "2.39.0"

  name = "my-vpc"
  cidr = "192.168.168.0/24"

  azs             = ["us-east-1a"]
  private_subnets = ["192.168.168.0/25"]
  public_subnets  = ["192.168.168.128/25"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
