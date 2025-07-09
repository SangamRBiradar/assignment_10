resource "azurerm_mssql_server" "server" {
  name                         = "sql-server-${random_pet.server.id}"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_user
  administrator_login_password = var.admin_password
}

resource "random_pet" "server" {
  length = 2
}

output "sql_server_name" {
  value = azurerm_mssql_server.server.name
}

output "sql_server_id" {
  value = azurerm_mssql_server.server.id
}

