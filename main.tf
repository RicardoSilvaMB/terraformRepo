module "vpc"{
    source = "./modules/vpc"
    cidr-block = "10.0.0.0/16"
}

module "s3"{
    source = "./modules/s3"
    bucket-name = "globalnamebucketrsmb"
}
