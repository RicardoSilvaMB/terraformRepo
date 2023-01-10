variable "cidr-block" {
  type = string
}

variable "nameresource" {
  type = string
}

variable "tagsAll" {
  type= map(string)
  default = {}
}

