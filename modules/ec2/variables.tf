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
variable "associate_public_ip_address" {
  type = bool
}
variable "subnet_id" {
  type = string
}
