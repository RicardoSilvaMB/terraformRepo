resource "aws_vpc" "vpc1" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "vpc1"
    }
}
resource "aws_subnet" "subnet1" {
  vpc_id     = "vpc-0af2c37534243e1d3"
  cidr_block = "172.31.50.0/24"

  tags = {
    Name = "subnet1"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "10.0.43.0/24"

  tags = {
    Name = "subnet2"
  }
}

module "s3"{
    source = "./modules/s3"
    bucket-name = "globalnamebucketrsmb"
}
