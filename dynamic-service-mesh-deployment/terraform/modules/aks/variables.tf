variable "resource_group_name" {
  description = "The name of the resource group in which to create the AKS cluster"
}

variable "location" {
  description = "The location/region where the AKS cluster is created"
}

variable "cluster_name" {
  description = "The name of the AKS cluster"
}

variable "vnet_subnet_id" {
  description = "The ID of the subnet for the AKS cluster"
}

