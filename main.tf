provider "azurerm" {
  features {}
  subscription_id = "80d37f3a-a7f6-405b-a0d0-e2d362572306"
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "sql_server" {
  source              = "./modules/sql_server"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  admin_user          = var.sql_admin_user
  admin_password      = var.sql_admin_password
}

module "sql_database" {
  source              = "./modules/sql_database"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  sql_server_id       = module.sql_server.sql_server_id
  database_name       = var.database_name
}

resource "azurerm_virtual_network" "vnet" {
  name                = "my-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name                 = "my-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

module "linux_vm" {
  source              = "./modules/linux_vm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  vm_count            = 2
  subnet_id           = azurerm_subnet.subnet.id
}




