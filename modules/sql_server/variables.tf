variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region where resources will be created"
}

variable "admin_user" {
  type        = string
  description = "SQL Server admin username"
}

variable "admin_password" {
  type        = string
  description = "SQL Server admin password"
  sensitive   = true
}
