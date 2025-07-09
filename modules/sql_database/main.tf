resource "azurerm_mssql_database" "db" {
  name                = var.name
  server_id           = var.sql_server_id
  sku_name            = "S0"
  collation           = "SQL_Latin1_General_CP1_CI_AS"
}
