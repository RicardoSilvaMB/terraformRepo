terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-west-1"
}

resource "aws_vpc" "vpc1" {
    cidr_block = "10.0.0.0/16"

    tags = {
        name = "vpc1"
    }
}