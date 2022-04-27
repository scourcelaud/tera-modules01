terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
  }
  backend "azurerm" {
        resource_group_name  = "RG-INFRA-FR-GH01"
        storage_account_name = "stterrafr01"
        container_name       = "tera-modules01"
        key                  = "tera-modules01-network.tfstate"
        subscription_id      = "73bf8809-70ea-4edd-890b-2349ca72d052"
    }

  required_version = ">= 1.1.0"
}


provider "azurerm" {
  features {}
  
}