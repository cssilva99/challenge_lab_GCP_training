#############
# Modules
#############

module "compute_instance_1" {
  source  = "terraform-google-modules/vm/google//modules/compute_instance"
  version = "~> 10.0"

  region            = var.region
  num_instances     = 1
  hostname          = "tf-instance-1"
  instance_template = module.instance_template.self_link
}

module "compute_instance_2" {
  source  = "terraform-google-modules/vm/google//modules/compute_instance"
  version = "~> 10.0"

  region            = var.region
  num_instances     = 1
  hostname          = "tf-instance-2"
  instance_template = module.instance_template.self_link
}
