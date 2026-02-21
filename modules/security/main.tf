resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.resource_group
}

output "nsg_id" {
  value = azurerm_network_security_group.nsg.id
}
