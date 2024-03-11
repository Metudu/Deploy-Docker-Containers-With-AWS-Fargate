resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id 

  route {
    gateway_id = var.internet_gateway_id
    cidr_block = var.cidr_block
  }

  tags = {
    "Name" = var.name
  }
}

resource "aws_route_table_association" "route_table_association" {
  subnet_id = var.subnet_id
  route_table_id = aws_route_table.route_table.id
}