resource "aws_db_instance" "my_rds" {
  allocated_storage    = 20
  engine               = "mysql"
  instance_class       = "db.t2.micro"
  name                 = "mydatabase"
  username             = var.db_username
  password             = var.db_password
  subnet_group_name    = aws_db_subnet_group.my_subnet_group.name
  vpc_security_group_ids = [var.db_security_group_id]

  tags = {
    Name = "my-rds-instance"
  }
}

resource "aws_db_subnet_group" "my_subnet_group" {
  name       = "my-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "my-db-subnet-group"
  }
}
