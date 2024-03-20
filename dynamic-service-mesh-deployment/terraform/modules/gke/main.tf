provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "gke" {
  name     = var.cluster_name
  location = var.region

  remove_default_node_pool = true
  initial_node_count = 1

  network    = var.network
  subnetwork = var.subnets[0]

  # Additional configurations as needed for hybrid connectivity
}

# Define VPC, subnets, and potential VPN/Interconnect configurations for hybrid setup

