# create resource group usinf Meta -argument- for_each

resource "azurerm_resource_group" "myrg" {
    for_each = {
      mydcapp1 = "east us"
      mydcapp2 = "west europe"
      mydcapp3 = "east asia"
    }
    name = "${each.key}-rg"
    location = each.value
  
}