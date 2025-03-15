provider "google" {
  project = var.gcp_project
  credentials = var.credentials
  region  = var.gcp_region
  zone    = var.gcp_zone
}