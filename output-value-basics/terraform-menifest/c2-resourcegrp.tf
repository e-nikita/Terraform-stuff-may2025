# Resource group

resource "azurerm_resource_group" "rg1" {
    name = "${var.resource_group_name}-${var.business_name}-${var.location}"
    location = var.location
}


