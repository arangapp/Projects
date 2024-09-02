output "rds_instance_id" {
  value = aws_db_instance.my_rds.id
}

output "rds_endpoint" {
  value = aws_db_instance.my_rds.endpoint
}

output "rds_db_name" {
  value = aws_db_instance.my_rds.name
}
