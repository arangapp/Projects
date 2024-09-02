include {
  path = find_in_parent_folders()
}

dependency "networking" {
  config_path = "../networking"
}

terraform {
  source = "../../../modules/php-servers"
}

inputs = {
  subnet_id = dependency.networking.outputs.private_subnet_ids_app[0]
  key_name  = "your-key-pair-name"
}
