variable "region" {
  description = "The AWS region to deploy the EKS cluster"
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
}

variable "vpc_id" {
  description = "The ID of the VPC where the EKS cluster will be deployed"
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the EKS cluster"
  type = list(string)
}

# Add variables for hybrid connectivity as needed
