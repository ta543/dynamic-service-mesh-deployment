variable "project_id" {
  description = "The ID of the Google Cloud project"
}

variable "region" {
  description = "The region to deploy the GKE cluster"
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
}

variable "network" {
  description = "The name of the VPC network for the GKE cluster"
}

variable "subnets" {
  description = "A list of subnets for the GKE cluster"
  type = list(string)
}

# Add variables for hybrid connectivity as needed
