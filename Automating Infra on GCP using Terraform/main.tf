#############
# Instances
#############

resource "google_compute_instance_from_template" "compute_instance" {
  name                = var.name
  type                = var.type
  region              = var.region
  zone                = var.zone 
  project             = var.project_id
  //permissions
  //configuration
}
