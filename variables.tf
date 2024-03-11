# networking.tf
variable "vpc" {
  type = object({
    name       = string
    cidr_block = string
  })
}

variable "subnet" {
  type = object({
    name       = string
    cidr_block = string
  })
}

variable "internet-gateway" {
  type = object({
    name = string
  })
}

variable "security-group" {
  type = object({
    name        = string
    description = string
  })
}

variable "routing" {
  type = object({
    name       = string
    cidr_block = string
  })
}
# END networking.tf

# compute.tf
variable "task-definition" {
  type = object({
    family = string
  })
}

variable "cluster" {
  type = object({
    name = string
  })
}

variable "service" {
  type = object({
    name = string
  })
}
# END compute.tf