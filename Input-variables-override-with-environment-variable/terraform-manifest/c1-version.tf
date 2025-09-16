# terraform basic block
terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        required_version = "=>2.0"
    }
  }
}

provider "azurerm" {
    features {}  
}

# random string
resource "azurerm_random_string" "myrandom" {
    length = 6
    upper = false
    number = false
    special = false
}