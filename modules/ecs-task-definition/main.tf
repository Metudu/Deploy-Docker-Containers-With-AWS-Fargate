resource "aws_ecs_task_definition" "task-definition" {
  family = var.family 
  cpu = var.cpu
  memory = var.memory
  requires_compatibilities = [ "FARGATE" ]
  network_mode = "awsvpc"
  container_definitions = file("${path.root}/container-definition.json")
}