######################################################################################################
  ChatGPT says that 2 Terraform Modules within the same file cannot have the same name
  IT IS NOT NECESSARY TO INDICATE the instance.tf file in the source. Just the folder is enough
######################################################################################################

module "compute_instance_1" {
  source  = "./modules/instances/tf-instance-1"
  region            = var.region
  num_instances     = 1
  hostname          = "tf-instance-1"
  instance_template = module.instance_template.self_link
}

module "compute_instance_2" {
  source  = "./modules/instances/tf-instance-2"
  region            = var.region
  num_instances     = 1
  hostname          = "tf-instance-2"
  instance_template = module.instance_template.self_link
}
