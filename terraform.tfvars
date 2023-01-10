ec2 = {
    "app" = {
        nameresource="app"

        ami =   "ami-0fe0b2cf0e1f25c8a"
        instance_type = "t2.micro"
        security_groups = module.vpc.aws_security_group.SG_APP
        subnet_id = module.vpc.aws_subnet.Private_Subnet.subnet_id
        key_name = "TestApp2"

        tagsAll = {
            env = "env"
            created-by = "terraform"
            ou = "tests"
        }
}

    "Bastion_Host"= {
        nameresource="Bastion_Host"

        ami =   "ami-0fe0b2cf0e1f25c8a"
        instance_type = "t2.micro"
        security_groups = module.vpc.aws_security_group.SG_Bastion_Host
        subnet_id = module.vpc.aws_subnet.Public_Subnet.subnet_id
        key_name = "pairBastion"
    }
}

vpc = {
    "vpc1" = {
        cidr-block = "10.0.0.0/16"
    }
}