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

variable "tagsAll" {
  type= map(string)
  default = {}
}

