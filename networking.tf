module "VPC" {
  source     = "./modules/ecs-vpc"
  name       = var.vpc.name
  cidr_block = var.vpc.cidr_block
}

module "Subnet" {
  source     = "./modules/ecs-subnet"
  name       = var.subnet.name
  cidr_block = var.subnet.cidr_block
  vpc_id     = module.VPC.id
}

module "Internet-Gateway" {
  source = "./modules/ecs-internet-gateway"
  name   = var.internet-gateway.name
  vpc_id = module.VPC.id

}

module "Security-Group" {
  source      = "./modules/ecs-security-group"
  name        = var.security-group.name
  description = var.security-group.description
  vpc_id      = module.VPC.id
}

module "Routing" {
  source              = "./modules/ecs-routing"
  name                = var.routing.name
  cidr_block          = var.routing.cidr_block
  vpc_id              = module.VPC.id
  subnet_id           = module.Subnet.id
  internet_gateway_id = module.Internet-Gateway.id
}
