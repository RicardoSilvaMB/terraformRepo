resource "aws_instance" "app" {
    ami =  var.ami 
    instance_type = var.instance_type
    security_groups = var.security_groups
    subnet_id = var.subnet_id
    associate_public_ip_address = var.associate_public_ip_address
    key_name = var.key_name   
}

/*
resource "aws_instance" "Bastion_Host" {
    ami =  var.ami 
    instance_type = var.instance_type
    security_groups = var.security_groups
    subnet_id = var.subnet_id
    associate_public_ip_address = var.associate_public_ip_address
    key_name = var.key_name
}*/