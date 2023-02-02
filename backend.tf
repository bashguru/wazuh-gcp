terraform {
  backend "gcs" {
    bucket      = "avertere-wazuh"
    prefix      = "terraform/state"
    credentials = "wazuh.json"
  }
}