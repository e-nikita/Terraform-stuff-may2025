# Create terraform version and provider block
terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
        Source = "hashicorp/azurerm"
        version = ">=2.0"
    }
  }
}

# Provider block
provider "azurerm" {
    features {}
}

# create random string

resource "azurerm_random_string" "myrandom" {
    length = 6
    upper = false
    special = false
    number = false
}
