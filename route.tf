resource "aws_route_table" "DevOPsB7-route" {
  vpc_id = aws_vpc.DevOPsB7.id
  tags = {
    Name = var.route_name
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.DevOPsB7-Igw.id
  }

}
resource "aws_route_table_association" "Dev_assocation_1" {
  subnet_id      = aws_subnet.DevOPsB7-Subnet-1.id
  route_table_id = aws_route_table.DevOPsB7-route.id
}
resource "aws_route_table_association" "Dev_assocation_2" {
  subnet_id      = aws_subnet.DevOPsB7-Subnet-2.id
  route_table_id = aws_route_table.DevOPsB7-route.id
}