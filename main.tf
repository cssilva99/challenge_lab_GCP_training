######################################################################################################
  # ChatGPT says that 2 Terraform Modules within the same file cannot have the same name
  # IT IS NOT NECESSARY TO INDICATE the instance.tf file in the source. Just the folder is enough
######################################################################################################
provider "google" {
  project     = "solar-theory-245311"
  region      = var.region
  zone        = var.zone
}

module "compute_instance_1" {
  source  = "./modules/instances/"
  region            = var.region
  # instance_template = modules.instances
}
