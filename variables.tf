variable "resource_group_name" {
  default = "my-app-rg"
}

variable "location" {
  default = "East US"
}

variable "sql_admin_login" {
  default = "sqladmin"
}

variable "sql_admin_password" {
  default = "StrongPassword123!"  # Consider using secrets for sensitive data
}

variable "admin_username" {
  default = "azureuser"
}

variable "public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD..."  # Replace with actual key
}

variable "subnet_id" {
  default = "/subscriptions/xxxx/resourceGroups/my-app-rg/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/default"
}
