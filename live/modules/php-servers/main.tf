resource "aws_instance" "php_server" {
  count         = 2
  ami           = "ami-0abcdef1234567890"
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install php7.4 -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              EOF

  tags = {
    Name = "php-server-${count.index + 1}"
  }
}
