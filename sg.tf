resource "aws_security_group" "allow_tls" {
  name        = "Dev-B7-sg"
  description = "Allow all inbound traffic"
  vpc_id      = aws_vpc.DevOPsB7.id

  ingress {
    description = "ALL TRAFFIC from VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = "MEGA-SG"
  }
}
