resource "google_compute_network" "wazuh_vpc_network" {
  name = "${var.name}-vpc"
  auto_create_subnetworks = false
}

