
provider "azurerm" {
  features {}
}

data "terraform_remote_state" "network" {
  backend = "azurerm"

  config = {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstate253253"
    container_name       = "tfstate"
    key                  = "network-${var.environment}.tfstate"
  }
}

module "compute" {
  source = "git::https://github.com/Santosh-Coupa/infra-modules.git//azure-vm//azure-vm-bluegreen"

  resource_group = var.resource_group
  location       = var.location
  vm_name        = var.vm_name
  vm_size        = var.vm_size
  admin_user     = var.admin_user
  ssh_public_key = var.ssh_public_key
  subnet_id      = data.terraform_remote_state.network.outputs.subnet_id
  nsg_id         = var.nsg_id
  active_color   = var.active_color
}
