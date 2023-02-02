resource "google_compute_router" "router" {
    name = "${var.name}-router"
    region = google_compute_subnetwork.wazuh_vpc_subnet.region
    network = google_compute_network.wazuh_vpc_network.id
  
  bgp {
    asn = 64514
  }
  depends_on = [
    google_compute_network.wazuh_vpc_network, google_compute_subnetwork.wazuh_vpc_subnet
  ]

}