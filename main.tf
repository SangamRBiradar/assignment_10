provider "azurerm" {
  features {}
  subscription_id = "80d37f3a-a7f6-405b-a0d0-e2d362572306"
}

module "rg" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.location
}

module "sql_server" {
  source              = "./modules/sql_server"
  name                = "my-sql-server"
  location            = var.location
  resource_group_name = module.rg.name
  admin_login         = var.sql_admin_login
  admin_password      = var.sql_admin_password
}

module "sql_db" {
  source         = "./modules/sql_database"
  name           = "mydb"
  sql_server_id  = module.sql_server.sql.id
}

module "linux_vm" {
  source              = "./modules/linux_vm"
  vm_count            = 2
  resource_group_name = module.rg.name
  location            = var.location
  admin_username      = var.admin_username
  public_key          = var.public_key
  subnet_id           = var.subnet_id
}
