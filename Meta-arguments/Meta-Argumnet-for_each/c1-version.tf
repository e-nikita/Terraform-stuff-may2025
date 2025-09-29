# terraform block
 terraform {
   required_version = ">=1.0.0.0"
   required_providers {
     azurerm = {
        source = "hashicorp/azurerm"
        required_version = ">=2.0"
     }
   }
 }

provider "azurerm" {
    features {}  
}


 