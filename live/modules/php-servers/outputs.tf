output "php_server_ids" {
  value = aws_instance.php_server[*].id
}

output "php_server_private_ips" {
  value = aws_instance.php_server[*].private_ip
}
