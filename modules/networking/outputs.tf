output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "public_subnet_ids" {
  value = aws_subnet.public_subnets[*].id
}

output "private_subnet_ids_app" {
  value = aws_subnet.private_subnets_app[*].id
}

output "private_subnet_ids_db" {
  value = aws_subnet.private_subnets_db[*].id
}
