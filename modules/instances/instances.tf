#############
# Instances
#############

resource "google_compute_instance_from_template" "tf-instance-1" {
  name                = "tf-instance-1"
  //region              = "us-west1"
  //zone                = var.zone 
  project             = var.project_id
  source_instance_template = google_compute_instance_template.tpl.self_link_unique
}

resource "google_compute_instance_from_template" "tf-instance-2" {
  name                = "tf-instance-2"
  //region              = "us-west1"
  //zone                = var.zone 
  project             = var.project_id
  source_instance_template = google_compute_instance_template.tpl.self_link_unique
}
