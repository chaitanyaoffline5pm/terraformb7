resource "aws_vpc" "DevOPsB7" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
    env  = var.env
  }
}

resource "aws_internet_gateway" "DevOPsB7-Igw" {
  vpc_id = aws_vpc.DevOPsB7.id
  tags = {
    Name = var.Igw_name
  }
}