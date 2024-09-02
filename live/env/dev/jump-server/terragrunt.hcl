include {
  path = find_in_parent_folders()
}

dependency "networking" {
  config_path = "../networking"
}

terraform {
  source = "../../../modules/jump-server"
}

inputs = {
  subnet_id = dependency.networking.outputs.public_subnet_ids[0]
  key_name  = "your-key-pair-name"
}
