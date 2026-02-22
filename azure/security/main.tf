provider "azurerm" {
  features {}
}

module "security" {
  source = "git::https://github.com/Santosh-Coupa/infra-modules.git//azure-nsg"

  resource_group = var.resource_group
  location       = var.location
  nsg_name       = var.nsg_name
  security_rules = var.security_rules

}
