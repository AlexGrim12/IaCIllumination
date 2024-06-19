terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.75.0"
      }
    azapi = {
      source = "Azure/azapi"
      version = ">= 1.9.0"
    }
  }
    backend "azurerm" {
      resource_group_name  = "Cloudlabs-ACI-1379918-labvm-1379918-csae3a50"
      storage_account_name = "agg12"
      container_name       = "container"
      key                  = "terraform.tfstate"
    }
  }
provider "azurerm" {
  features {}
  skip_provider_registration = false
  }
provider "azapi" {
}
