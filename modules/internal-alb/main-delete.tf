dependency "vpc" {
  config_path = "../vpc"
}

dependency "subnets" {
  config_path = "../subnets"
}

terraform {
  source = "../../../terraform-modules/rds"
}

inputs = {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  db_name              = "mydatabase"
  username             = "admin"
  password             = "supersecretpassword"
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name = "my-db-subnet-group"  # This could be created in a separate subnet group module if needed
  vpc_security_group_ids = ["sg-xxxxxx"]  # Replace with your security group ID(s)
  environment          = "prod"
  tags = {
    Environment = "prod"
    Project     = "my-project"
  }
}
