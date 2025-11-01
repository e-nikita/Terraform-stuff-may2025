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
<<<<<<< HEAD
=======
    subscription_id = "2d00b411-2b44-479f-9fea-9b79af9b10bb"
>>>>>>> 97c399152fc9723a3a9984a239ffec8b8933e911
}

# Resource block
# Create a resource group
<<<<<<< HEAD
resource "azurerm_resource_group" "myrg1" {
    name = "rgazeusnonprod"
    location = "East US 2"

  

}
=======
/*resource "azurerm_resource_group" "myrg1" {
    name = "rgazeusnonprod"
    location = "East US 2"
}*/
>>>>>>> 97c399152fc9723a3a9984a239ffec8b8933e911
