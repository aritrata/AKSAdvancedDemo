data "azurerm_resource_group" "appinsightsrg" {
  name = var.rg_name
}

resource "azurerm_application_insights" "appinsights" {
  name                = var.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.appinsightsrg.name
  application_type    = var.application_type
}