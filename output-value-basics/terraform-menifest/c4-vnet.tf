# create virtual network

resource "azurerm_virtual_network" "myvnet" {
    name = "${var.virtual_network_name}-${var.location}-${var.environment}"
    address_space = ["10.0.0.0/16"]
    resource_group_name = azurerm_resource_group.rg1.name
    location = azurerm_resource_group.rg1.location 
}

# create subnet
resource "azurerm_subnet" "mysubnet" {
    name = "subnet1"
    resource_group_name = azurerm_resource_group.rg1.name
    virtual_network_name = azurerm_virtual_network.myvnet.name
    address_prefixes = ["10.0.1.0/24"]
}


