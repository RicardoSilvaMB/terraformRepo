resource "aws_vpc" "vpc1" {
  cidr_block = var.cidr-block
  tags = {
    "Name" = "vpc1"
  }
}