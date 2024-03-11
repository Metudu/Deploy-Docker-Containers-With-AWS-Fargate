resource "aws_vpc" "project-vpc" {
  cidr_block = var.cidr_block
  tags = {
    "Name" = var.name
  }
}