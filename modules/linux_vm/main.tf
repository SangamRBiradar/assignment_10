resource "azurerm_linux_virtual_machine" "vm" {
  count               = var.vm_count
  name                = "linux-vm-${count.index}"
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = "Standard_DS1_v2"
  admin_username      = var.admin_username

  network_interface_ids = [azurerm_network_interface.nic[count.index].id]
  admin_ssh_key {
    username   = var.admin_username
    public_key = var.public_key
  }
}

resource "azurerm_network_interface" "nic" {
  count               = var.vm_count
  name                = "nic-${count.index}"
  resource_group_name = var.resource_group_name
  location            = var.location

  ip_configuration {
    name                          = "ipconfig"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}
