resource "azurerm_mssql_database" "db" {
  name       = var.database_name
  server_id  = var.sql_server_id
  sku_name   = "S0"
}

output "database_name" {
  value = azurerm_mssql_database.db.name
}
