resource "google_compute_subnetwork" "wazuh_vpc_subnet" {
    name = "${var.name}-subnet1-us-central1"
    ip_cidr_range = var.subnet_cidr_range
    network = google_compute_network.wazuh_vpc_network.id
    private_ip_google_access = true
    depends_on = [
      google_compute_network.wazuh_vpc_network
    ]
}