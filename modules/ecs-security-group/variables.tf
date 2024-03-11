variable "name" {
  type = string 
}

variable "description" {
  type = string 
}

variable "vpc_id" {
  type = string 
}

variable "ingress" {
  type = object({
    from_port = number
    to_port = number
    protocol = string
    cidr_blocks = string
  })

  default = {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = "0.0.0.0/0"
  }
}

variable "egress" {
  type = object({
    from_port = number
    to_port = number
    protocol = string
    cidr_blocks = string
  })

  default = {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = "0.0.0.0/0"
  }
}