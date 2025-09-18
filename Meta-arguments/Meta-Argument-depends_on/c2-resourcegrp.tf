# create resource group

resource "azurerm_resource_group" "myrg" {
    name = "myrg1"
    location = "west europe"  
}