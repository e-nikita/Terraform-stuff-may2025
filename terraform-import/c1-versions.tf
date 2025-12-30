terraform {
  required_version = "=>1.0.0"
  required_providers {
    azure_rm = {
        source = "hashicorp\terraform"
        required_version = ">=2.0.0"
    }
  }
}

provider "azurerm" {
    features {}
}
