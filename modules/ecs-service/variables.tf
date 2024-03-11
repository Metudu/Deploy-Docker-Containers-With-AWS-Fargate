variable "name" {
  type = string
}

variable "cluster_arn" {
  type = string 
}

variable "task_definition_arn" {
  type = string
}

variable "desired_count" {
  type = number 
  default = 1
}

variable "subnet_id" {
  type = string 
}

variable "security_group_id" {
  type = string 
}

variable "assign_public_ip" {
  type = bool
  default = true
}