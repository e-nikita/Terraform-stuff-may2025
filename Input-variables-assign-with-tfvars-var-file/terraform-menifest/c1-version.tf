# terraform nad provider version
terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
        source = "hasicorp/azurerm"
        required_version = ">=2.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# random string block
resource "azurerm_random_string" "myrandomstr" {
    length = 6
    upper = false
    special = false
    number = false 
}