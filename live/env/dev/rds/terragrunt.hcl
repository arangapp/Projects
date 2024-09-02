include {
  path = find_in_parent_folders()
}

dependency "networking" {
  config_path = "../networking"
}

terraform {
  source = "../../../modules/rds"
}

inputs = {
  subnet_ids         = dependency.networking.outputs.private_subnet_ids_db
  db_username        = "your-db-username"
  db_password        = "your-db-password"
  db_security_group_id = "your-db-security-group-id"
}
