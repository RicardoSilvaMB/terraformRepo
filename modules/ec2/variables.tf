/*
variable "ec2" {
    type = map (object({
        ami = string 
        instance_type = string
        key_name = string
        associate_public_ip_address = bool
        security_groups = any
        subnet_id = string
    }))
}
*/
variable "ami" {
  type = string
}
variable "instance_type" {
  type = string
}
variable "key_name" {
  type = string
}
variable "security_groups" {
  type = any
}
variable "subnet_id" {
  type = string
}
