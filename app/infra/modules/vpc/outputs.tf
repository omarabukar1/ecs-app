output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = [aws_subnet.sub1.id, aws_subnet.sub2.id]
}

output "public_route_table_id" {
  value = aws_route_table.public_rt.id
}
