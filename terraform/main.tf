resource "google_compute_subnetwork" "my-subnet" {
  name          = "${local.name_suffix}-subnet"
  ip_cidr_range = "10.0.0.0/24"
  region        = "northamerica-northeast1"
  network       = google_compute_network.my-net.id
}

resource "google_compute_network" "my-net" {
  name                    = "${local.name_suffix}-net"
  auto_create_subnetworks = false
}