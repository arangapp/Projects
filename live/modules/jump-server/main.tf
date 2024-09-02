resource "aws_instance" "jump_server" {
  ami           = "ami-0abcdef1234567890"
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  tags = {
    Name = "jump-server"
  }
}
