provider "azurerm" {
    version = "~> 2.0"
    features {}
}

terraform {
    backend "azurerm" {
      resource_group_name = "WTC_SOL1"   
      storage_account_name = "aksadvancedstore"
      container_name = "terraform.tfstate`"
    }
}

data "azurerm_client_config" "current" {}