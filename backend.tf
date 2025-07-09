terraform {
  backend "azurerm" {
    resource_group_name  = "tfstaterg"
    storage_account_name = "tfstatestorespp"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_azuread_auth     = true
  }
}
