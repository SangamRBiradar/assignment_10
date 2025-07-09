variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "sql_server_id" {
  type        = string
  description = "ID of the Azure SQL Server"
}

variable "database_name" {
  type        = string
  description = "Name of the SQL database to create"
}
