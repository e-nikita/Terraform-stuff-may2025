# Create trraform required and provider block

terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
        required_version = ">=2.0"
        source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
    features {}        
}

resource "azurerm_random_string" "myrandomstr" {
    length = 6
    upper = false
    special = false
    number = false  
}