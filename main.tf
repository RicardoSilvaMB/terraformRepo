module "vpc" {
  source     = "./modules/vpc"
  cidr-block = "10.50.0.0/16"
}

module "s3" {
  source      = "./modules/s3"
  bucket-name = "globalnamebucketrsmb"
}

module "ec2" {
  source = "./modules/ec2"
  
  for_each = var.ec2

  ami = each.value.ami
  instance_type = each.value.instance_type
  security_groups = each.value.security_groups
  subnet_id = each.value.subnet_id
  key_name = each.value.key_name
  associate_public_ip_address = each.value.associate_public_ip_address
}

