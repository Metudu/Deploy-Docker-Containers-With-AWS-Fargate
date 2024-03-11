resource "aws_ecs_service" "service" {
  name = var.name
  cluster = var.cluster_arn
  task_definition =  var.task_definition_arn
  desired_count = var.desired_count
  launch_type = "FARGATE"

  network_configuration {
    subnets = [ var.subnet_id ]
    security_groups = [ var.security_group_id ]
    assign_public_ip = var.assign_public_ip
  }
}