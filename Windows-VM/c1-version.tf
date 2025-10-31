# Terraform block
terraform {
    required_version = ">= 1.0.0"
    required_providers {
      azurerm = {
      }
    }
}

# Provider block
provider "azurerm" {
    features {}
    subscription_id = "2d00b411-2b44-479f-9fea-9b79af9b10bb"
}

# Resource block
# Create a resource group
/*resource "azurerm_resource_group" "myrg1" {
    name = "rgazeusnonprod"
    location = "East US 2"
}*/
