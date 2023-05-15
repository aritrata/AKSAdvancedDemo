data "azurerm_resource_group" "sql_resource_group" {
  name     = var.rg_name
}

resource "azurerm_sql_server" "sql_server" {
  name                         = var.servername
  resource_group_name          = var.rg_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.adminuser
  administrator_login_password = var.adminpassword

  tags = {
    Environment = var.environment
  }
}

resource "azurerm_sql_database" "sqldb" {
 name                               = var.dbName
 resource_group_name                = var.rg_name
 location                           = var.location
 server_name                        = azurerm_sql_server.sql_server.name
 edition                            = var.edition
 requested_service_objective_name   = var.sobject
  tags = {
    environment =  var.environment
  }
}