# Terraform block
terraform {
    required_version = ">=1.0.0"
    required_providers {
      azurerm = {
        required_version = ">=2.0"
        source = "hashicorp/azurerm"
      }
    }
}

# provider block
provider "azurerm" {
  features {} 
  }
