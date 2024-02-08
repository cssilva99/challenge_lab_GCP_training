#############
# Instances
#############

resource "google_compute_instance_from_template" "tf-instance-1" {
  name                = var.name
  type                = var.type
  region              = var.region
  zone                = var.zone 
  project             = var.project_id
  //permissions
  //configuration
}

resource "google_compute_instance_from_template" "tf-instance-2" {
  name                = var.name
  type                = var.type
  region              = var.region
  zone                = var.zone 
  project             = var.project_id
  //permissions
  //configuration
}
