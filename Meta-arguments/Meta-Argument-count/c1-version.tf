# create terraform resource block
terraform {
  required_version = "=>1.0.0.0"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">=2.0"
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
    special = false
    number = false  
}