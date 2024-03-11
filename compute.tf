module "Task-Definition" {
  source = "./modules/ecs-task-definition"
  family = var.task-definition.family
}

module "Cluster" {
  source = "./modules/ecs-cluster"
  name   = var.cluster.name
}

module "Service" {
  source              = "./modules/ecs-service"
  name                = var.service.name
  subnet_id           = module.Subnet.id
  security_group_id   = module.Security-Group.id
  cluster_arn         = module.Cluster.arn
  task_definition_arn = module.Task-Definition.arn
}