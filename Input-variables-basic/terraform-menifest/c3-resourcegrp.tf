# Create resource group

resource "azurerm_resource_group" "myrg" {
    name = "${var.resource_group_name}-${var.business_name}-${var.environment}"
    location = var.resource_group_location  
}