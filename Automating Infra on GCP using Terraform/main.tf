##########################################################################################
# ChatGPT says that 2 Terraform Modules within the same file cannot have the same name
##########################################################################################

module "compute_instance_1" {
  source  = "/modules/instances/tf-instance-1"
  version = "~> 10.0"

  region            = var.region
  num_instances     = 1
  hostname          = "tf-instance-1"
  instance_template = module.instance_template.self_link
}

module "compute_instance_2" {
  source  = "/modules/instances/tf-instance-2"
  version = "~> 10.0"

  region            = var.region
  num_instances     = 1
  hostname          = "tf-instance-2"
  instance_template = module.instance_template.self_link
}
