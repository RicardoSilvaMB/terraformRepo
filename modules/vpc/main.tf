resource "aws_vpc" "vpc1" {
  cidr_block = var.cidr-block
  tags = {
    "Name" = "vpc1"
  }
}

resource "aws_internet_gateway" "IGW_1" {
  vpc_id = aws_vpc.vpc1.id

  tags = {
    Name = "IGW_1"
  }
}

resource "aws_subnet" "Public_Subnet" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.0.23.0/16"
  map_public_ip_on_launch = true
  tags = {
    "Name" = "Public_Subnet"
  }
}

resource "aws_subnet" "Private_Subnet" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.0.24.0/16"
  tags = {
    "Name" = "Private_Subnet"
  }
}

resource "aws_security_group" "SG_APP"{
  name        = "SG_APP"
  description = "Allow only SSH from Bastion Host"
  vpc_id      = aws_vpc.vpc1.id

  ingress{
    from_port        = 22
    to_port          = 22
    protocol         = "ssh"
    cidr_blocks      = [aws_instance.Bastion_Host.private_ip]
  }
}

resource "aws_security_group" "SG_Bastion_Host"{
  name        = "SG_Bastion_Host"
  description = "Allow only SSH from 0.0.0.0"
  vpc_id      = aws_vpc.vpc1.id

  ingress{
    from_port        = 22
    to_port          = 22
    protocol         = "ssh"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

resource "aws_route_table" "name" {
  vpc_id = aws_vpc.vpc1.id

  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.IGW_1.id
    }

}

