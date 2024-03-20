output "cluster_id" {
  value = google_container_cluster.gke.id
}

output "cluster_endpoint" {
  value = google_container_cluster.gke.endpoint
}

output "cluster_ca_certificate" {
  value = google_container_cluster.gke.master_auth[0].cluster_ca_certificate
}

# Add more outputs as needed
