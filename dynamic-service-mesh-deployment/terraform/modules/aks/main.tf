resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.cluster_name}-dns"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  # Configure networking for hybrid connectivity
  network_profile {
    network_plugin    = "azure"
    service_cidr      = "10.10.0.0/16"
    dns_service_ip    = "10.10.0.10"
    docker_bridge_cidr = "172.17.0.1/16"
    outbound_type     = "userDefinedRouting"
    load_balancer_sku = "standard"
  }

  # Ensure the AKS cluster is integrated with Azure Active Directory if needed

  tags = {
    Environment = "development"
  }
}

# Add configurations for networking and hybrid connectivity (e.g., VPN Gateway, ExpressRoute)

