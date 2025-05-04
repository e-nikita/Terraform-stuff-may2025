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
}

# Resource block
# Create a resource group
resource "azurerm_resource_group" "nmyrg1" {
    name = "rgazeusnonprod"
    location = "East US 2"

  
}