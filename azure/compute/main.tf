
provider "azurerm" {
  features {}
}
data "azurerm_subnet" "existing" {
  name                 = var.subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.resource_group
}

data "azurerm_network_security_group" "existing" {
  name                 = var.nsg_name
  resource_group_name  = var.resource_group
}

module "compute" {
  source = "git::https://github.com/Santosh-Coupa/infra-modules.git//azure-vm//azure-vm-bluegreen"

  resource_group = var.resource_group
  location       = var.location
  vm_name        = var.vm_name
  vm_size        = var.vm_size
  admin_user     = var.admin_user
  ssh_public_key = var.ssh_public_key
  subnet_id      = data.azurerm_subnet.existing.id
  nsg_id         = data.azurerm_network_security_group.existing.id
  active_color   = var.active_color
  environment    = var.environment 
}
