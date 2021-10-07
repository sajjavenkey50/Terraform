resource "azurerm_network_interface" "nic1" {
  name                = var.nic_name
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.nic1.id
    private_ip_address_allocation = "Dynamic"
  }
}