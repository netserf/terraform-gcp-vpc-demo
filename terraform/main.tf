# subnet for custom vpc
resource "google_compute_subnetwork" "my-subnet" {
  name = "${local.name_suffix}-subnet"
  ip_cidr_range = "10.0.0.0/24"
  network = google_compute_network.my-custom-net.id
}

# custom vpc
resource "google_compute_network" "my-custom-net" {
  name = "${local.name_suffix}-custom-net"
  auto_create_subnetworks = false
}

# also an auto vpc, why not?
resource "google_compute_network" "my-auto-net" {
  name = "${local.name_suffix}-auto-net"
}

terraform {
  backend "gcs" {
	  bucket = "${local.tf_bucket}"
	  prefix = "${local.tf_folder}"
  }
}

