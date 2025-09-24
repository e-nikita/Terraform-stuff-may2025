# create virtual network

resource "azurerm_virtual_network" "myvnet" {
    name = "myvnet1"
    location = azurerm_resource_group.myrg.location
    resource_group_name = azurerm_resource_group.myrg.name
    address_space = ["10.0.0.0/16"]  
}

# create subnet
resource "azurerm_subnet" "mysubnet" {
    name = "mysubnet1"
    resource_group_name = azurerm_resource_group.myrg.name
    virtual_network_name = azurerm_virtual_network.myvnet.name
    address_prefixes = ["10.0.2.0/24"]
}

# create nic
resource "azurerm_network_interface" "myvmnic" {
    count = 2
    name = "mynic-${count.idex}"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    ip_configuration {
      name = "internal"
      subnet_id = azurerm_subnet.mysubnet.id
      private_ip_address_allocation = "static"
    }
  
}

