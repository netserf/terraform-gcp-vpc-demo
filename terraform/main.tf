resource "google_compute_subnetwork" "tf-custom-net" {
  name          = "${local.name_suffix}-subnet"
  ip_cidr_range = "10.0.0.0/24
  region        = "us-west1"
  network       = google_compute_network.tf-subnet.id
}

resource "google_compute_network" "tf-subnet" {
  name                    = "${local.name_suffix}-net"
  auto_create_subnetworks = false
}
