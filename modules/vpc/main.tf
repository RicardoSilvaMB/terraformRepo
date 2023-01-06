resource "aws_vpc" "vpc1" {
  cidr_block = var.cidr-block
  tags = {
    "Name" = "vpc1"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = "10.0.23.0/16"
  tags = {
    "Name" = "subnet1"
  }
}