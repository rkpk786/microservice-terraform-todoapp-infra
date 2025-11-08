terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rahulaction"
    storage_account_name = "rahulactionstg12"
    container_name       = "actioncont"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "328861c5-c270-40df-86f9-628accce0c5d"
}
