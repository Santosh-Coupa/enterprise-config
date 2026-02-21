terraform {
  backend "azurerm" {
    resource_group_name  = "tf-state-rg"
    storage_account_name = "tfstate253253"
    container_name       = "tfstate"
    key                  = "dev.tfstate"
  }
}
