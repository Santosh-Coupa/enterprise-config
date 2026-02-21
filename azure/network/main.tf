provider "azurerm" {
  features {}
}

module "network" {
  source = "git::https://github.com/Santosh-Coupa/infra-modules.git//azure-network"

  resource_group = var.resource_group
  location       = var.location
  vnet_name      = var.vnet_name
  subnet_name    = var.subnet_name
  address_space  = var.address_space
  subnet_prefixes  = var.subnet_prefixes
}
