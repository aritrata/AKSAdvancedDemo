/*resource "azurerm_resource_group" "acr_resource_group" {
  name      = var.rg_name
  location  = var.location

  tags = {
    Environment = var.environment
  }
}

resource "azurerm_container_registry" "acr" {
  name                = var.name
  resource_group_name = azurerm_resource_group.acr_resource_group.name
  location            = azurerm_resource_group.acr_resource_group.location
  sku                 = "Premium"
  admin_enabled       = true

  tags = {
    Environment = var.environment
  }
}
*/

data "azurerm_resource_group" "acr_resource_group" {
  name      = var.rg_name
}

resource "azurerm_container_registry" "acr" {
  name                = var.name
  resource_group_name = var.rg_name
  location            = var.location
  sku                 = "Premium"
  admin_enabled       = true

  tags = {
    Environment = var.environment
  }
}