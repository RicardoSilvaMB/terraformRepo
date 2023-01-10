########################_VPC_########################
module "vpc" {
  source = "./modules/vpc"

  for_each = var.vpc

  cidr-block = each.value.cidr_block
}

########################_S3_########################
module "s3" {
  source      = "./modules/s3"
  bucket-name = "globalnamebucketrsmb"
}

########################_EC2_########################
module "ec2" {
  source = "./modules/ec2"

  for_each = var.ec2

  ami             = each.value.ami
  instance_type   = each.value.instance_type
  security_groups = each.value.security_groups
  subnet_id       = each.value.subnet_id
  key_name        = each.value.key_name

  tagsAll = var.tagsAll
}

