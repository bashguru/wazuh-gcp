resource "google_compute_firewall" "wazuh_vpc_firewall" {
    name = "${var.name}-ingress-rules"
    network = google_compute_network.wazuh_vpc_network.name
    description = "Ingress routes from Wazuh Agent to Wazuh Server \"1514\" Agentless to Wazuh Server via Syslog \"514\" and Wazuh Web User Interface \"443.\""

    allow {
      protocol = "tcp"
      ports = ["1514", "443", "514"]
    } 
     source_tags = [ "INGRESS" ]
     depends_on = [
       google_compute_network.wazuh_vpc_network, google_compute_subnetwork.wazuh_vpc_subnet
     ]
}

