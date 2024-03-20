# GCP Provider configuration
provider "google" {
  project = var.gcp_project
  region  = var.gcp_region
}

# Add your GCP resources here
