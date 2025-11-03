terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-todostatefile"
    storage_account_name = "todostatestg2025"
    container_name       = "goodcontainers"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "328861c5-c270-40df-86f9-628accce0c5d"
}
