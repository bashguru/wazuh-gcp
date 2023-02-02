variable "credentials" {
  description = "GCP Service Account Key Credentials"
}
variable "name" {
  description = "Prefix in resource name"
  type        = string
}
variable "gcp_project" {
  description = "Project Id of the GCP Account"
  type        = string
}
variable "region" {
  description = "Region in which the resource will create"
  type        = string
}
variable "zone" {
  description = "Zone in which the resource will create"
  type        = string
}
variable "subnet_cidr_range" {
  description = "Subnet CIDR IP range"
}
