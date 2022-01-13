resource "google_compute_subnetwork" "tf-custom-net" {
  name          = "tf-subnet-${local.name_suffix}"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-west1"
  network       = google_compute_network.tf-subnet.id
}

resource "google_compute_network" "tf-subnet" {
  name                    = "tf-net-${local.name_suffix}"
  auto_create_subnetworks = false
}
