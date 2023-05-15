data "azurerm_resource_group" "kubernetes_resource_group" {
  name     = var.rg_name
}

resource "azurerm_kubernetes_cluster" "k8s" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = var.name
  kubernetes_version  = var.kubernetes_version

  linux_profile {
    admin_username = "ubuntu"
    
    ssh_key {
      key_data = var.ssh_public_key
    }
  }

  default_node_pool {
    name                 = "agentpool"
    node_count           = var.agent_count
    vm_size              = var.vm_size
    vnet_subnet_id       = var.aks_subnet
    type                 = "VirtualMachineScaleSets"
    orchestrator_version = var.kubernetes_version
  }

  addon_profile {
    oms_agent {
      enabled                    = var.addons.oms_agent
      log_analytics_workspace_id = var.log_analytics_workspace_id
    }
    azure_policy {
      enabled = var.addons.azure_policy
    }

  ingress_application_gateway {
      enabled   = var.addons.ingress_application_gateway
      subnet_id = var.agic_subnet_id
    }

  }

  network_profile {
    load_balancer_sku = "standard"
    network_plugin    = "azure"
  }

  service_principal {
    client_id     = var.aks_service_principal_app_id
    client_secret = var.aks_service_principal_client_secret
  }

  tags = {
    Environment = var.environment
  }
}
