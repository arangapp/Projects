output "jump_server_id" {
  value = aws_instance.jump_server.id
}

output "jump_server_public_ip" {
  value = aws_instance.jump_server.public_ip
}
