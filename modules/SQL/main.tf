provider "azurerm" {
     skip_provider_registration = "true"
  features {}
}

resource "azurerm_sql_server" "sql" {
  name                         = var.sql_server
  resource_group_name          = var.rg_name
  location                     = var.location
  version                      = var.server_version
  administrator_login          = var.sql_login
  administrator_login_password = var.sql_pass

  tags = {
    environment = "demo"
  }
}

resource "azurerm_sql_database" "OnityKeyDB" {
  name                = var.dbname
  resource_group_name = var.rg_name
  location            = var.location
  server_name         = azurerm_sql_server.sql.name
  tags = {
    environment = "demo"
  }
}