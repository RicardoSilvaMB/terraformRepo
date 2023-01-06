terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "terraform"
  region  = "eu-west-1"
  default_tags {
    tags = {
      Environment = "Terraform"
    }
  }
}
