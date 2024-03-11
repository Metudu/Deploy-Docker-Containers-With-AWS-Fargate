resource "aws_subnet" "project-subnet" {
  vpc_id = var.vpc_id 
  cidr_block = var.cidr_block
  map_public_ip_on_launch = var.public_ip
  tags = {
    "Name" = var.name
  }
}