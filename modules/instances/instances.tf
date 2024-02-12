#############
# Instances
#############

resource "google_compute_instance_from_template" "tf-instance-1" {
  name                = "tf-instance-1"
  //region              = "us-west1"
  //zone                = var.zone 
  project             = var.project_id
  source_instance_template = "instance-template-20240212-122428"
}
