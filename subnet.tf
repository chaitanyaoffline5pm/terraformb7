resource "aws_subnet" "DevOPsB7-Subnet-1" {
  vpc_id                  = aws_vpc.DevOPsB7.id
  cidr_block              = var.subnet1_cidr
  map_public_ip_on_launch = true
  tags = {
    Name = var.subnet1_name
  }

}
resource "aws_subnet" "DevOPsB7-Subnet-2" {
  vpc_id                  = aws_vpc.DevOPsB7.id
  cidr_block              = var.subnet2_cidr
  map_public_ip_on_launch = true
  tags = {
    Name = var.subnet2_name
  }

}