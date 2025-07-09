variable "vm_count" {
  default = 2
}

variable "resource_group_name" {
  default = "my-app-rg"
}

variable "location" {
  default = "East US"
}

variable "admin_username" {
  default = "azureuser"
}

variable "public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD..."
}

variable "subnet_id" {
  default = "/subscriptions/xxxx/resourceGroups/my-app-rg/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/default"
}
