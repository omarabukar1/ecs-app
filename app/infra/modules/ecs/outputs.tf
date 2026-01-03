output "cluster_id" {
  value = aws_ecs_cluster.cluster.id
}

output "service_name" {
  value = aws_ecs_service.service.name
}

output "task_sg_id" {
  value = aws_security_group.task_sg.id
}
