resource "azurerm_public_ip" "public_ip1" {
  name                = var.public_ip_name
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  allocation_method   = var.public_ip_allocation_method
}