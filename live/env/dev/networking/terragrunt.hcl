include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../../modules/networking"
}

inputs = {
  vpc_cidr         = "10.0.0.0/16"
  availability_zones = ["us-west-2a", "us-west-2b"]
}
