resource "aws_security_group" "security_group" {
  name = var.name 
  description = var.description
  vpc_id = var.vpc_id

  ingress {
    from_port = var.ingress.from_port
    to_port = var.ingress.to_port
    protocol = var.ingress.protocol
    cidr_blocks = [ var.ingress.cidr_blocks ]
  }

  egress {
    from_port = var.egress.from_port
    to_port = var.egress.to_port
    protocol = var.egress.protocol
    cidr_blocks = [ var.egress.cidr_blocks ]
  }
}