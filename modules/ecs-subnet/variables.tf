variable "name" {
  type = string 
}

variable "vpc_id" {
  type = string
}

variable "cidr_block" {
  type = string 
}

variable "public_ip" {
  type = bool
  default = true
}