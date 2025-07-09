variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "vm_count" {
  type        = number
  description = "Number of Linux VMs to create"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID for NIC attachment"
}
