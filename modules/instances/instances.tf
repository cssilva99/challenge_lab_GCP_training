#############
# Instances
#############

resource "google_compute_instance_from_template" "tf-instance-1" {
  name                = "tf-instance-1"
  type                = var.type
  region              = var.region
  zone                = var.zone 
  project             = var.project_id
  //permissions
  //configuration
}

resource "google_compute_instance_from_template" "tf-instance-2" {
  name                = "tf-instance-2"
  type                = var.type
  region              = var.region
  zone                = var.zone 
  project             = var.project_id
  //permissions
  //configuration
}
