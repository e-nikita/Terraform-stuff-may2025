# create vnet


resource "azurerm_virtual_network" "myvnet" {
    name = "${var.virtual_network_name}-${var.environment}-${var.business_unit}"
    location = azurerm_resource_group.myrg.location
    resource_group_name = azurerm_resource_group.myrg.name
    address_space = "[10.0.0.0/16]"  
}

resource "azurerm_subnet" "mysubnet" {
    name = "${var.virtual_network_name}-${var.subnet_name}"
    address_prefixes = "[10.0.2.0/24]"
    resource_group_name = azurerm_resource_group.myrg.name
    virtual_network_name = azurerm_virtual_network.myrg.name  
}

# Create public ip

resource "azurerm_public_ip" "mypublicip" {
    name = "mypublicip1"
    location = azurerm_resource_group.myrg.location
    resource_group_name = azurerm_resource_group.myrg.name
    allocation_method = "static"
}

# create network interface card

resource "azurerm_network_interface" "mynic" {
    name = "myvmnic"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    ip_configuration {
        name = "internal"
        subnet_id = azurerm_subnet.mysubnet.id
        private_ip_address_allocation = "dynamic"
        public_ip_address_id = azurerm_public_ip.mypublicip.id
    }
  
}