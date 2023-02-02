resource "google_compute_instance" "wazuh_master_node" {
  count = 1
  name         = "wazuh-master-node-${count.index+1}"
  machine_type = "n2d-standard-2"

  boot_disk {
    initialize_params {
      image = "ubuntu-minimal-2204-lts"
    }
  }
  network_interface {
    network = "default"
  }
}


resource "google_compute_instance" "wazuh_worker_node" {
  count = 2
  name         = "wazuh-worker-node-${count.index+1}"
  machine_type = "n2d-standard-2" # Default set to minimum hardware requirements - change for production: https://documentation.wazuh.com/current/installation-guide/wazuh-server/index.html

  boot_disk {
    initialize_params {
      image = "ubuntu-minimal-2204-lts"
    }
  }
  network_interface {
    network = "default"
  }
}
    
resource "google_compute_instance" "wazuh_indexer_node" {
  count = 2
  name         = "wazuh-indexer-node-${count.index+1}"
  machine_type = "n2-standard-2" # Default set to minimum hardware requirements - change for production: https://documentation.wazuh.com/current/installation-guide/wazuh-indexer/index.html

  boot_disk {
    initialize_params {
      image = "ubuntu-minimal-2204-lts"
    }
  }
  network_interface {
    network = "default"
  }
}

resource "google_compute_instance" "wazuh_dashboard" {
  count = 1
  name         = "wazuh-dashboard-node-${count.index+1}"
  machine_type = ""

  boot_disk {
    initialize_params {
      image = "ubuntu-minimal-2204-lts"
    }
  }
  network_interface {
    network = "default"
  }
}
