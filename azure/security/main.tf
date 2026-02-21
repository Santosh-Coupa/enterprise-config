terraform {
  backend "azurerm" {
    resource_group_name  = "tf-state-rg"
    storage_account_name = "tfstateaccount"
    container_name       = "tfstate"
    key                  = "security.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "security" {
  source = "git::https://github.com/Santosh-Coupa/infra-modules.git//azure-nsg"

  resource_group = var.resource_group
  location       = var.location
  nsg_name       = var.nsg_name
}
