ec2 = {
    "app" = {
        ami =   "ami-0fe0b2cf0e1f25c8a"
        instance_type = "t2.micro" 
#        security_groups = module.vpc.aws_security_group.SG_APP
#        subnet_id = module.vpc.aws_subnet.Private_Subnet.subnet_id
        security_groups = ["sg-0304cee2d5e4a222e"]
        subnet_id = "subnet-0c156e17165529a81"

        associate_public_ip_address = false
        key_name = "TestApp2"

       /*  tagsEC2= {
            Name = "Eu______-Privado"
        } */
    }

    "Bastion_Host"= {
        ami =   "ami-0fe0b2cf0e1f25c8a"
        instance_type = "t2.micro"
#        security_groups = module.vpc.aws_security_group.SG_Bastion_Host
#        subnet_id = module.vpc.aws_subnet.Public_Subnet.subnet_id
        security_groups = ["sg-0153cc902e704ae75"]
        subnet_id = "subnet-04718f009d32af607"

        associate_public_ip_address = true
        key_name = "pairBastion"
        
        /* tagsEC2= {
            Name = "Eu______-Publico"
        } */
    }
}