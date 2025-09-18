# create virtual network
resource "azurerm_virtual_network" "myvnet" {
    name = "myvnet"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    address_space = ["10.0.0.0/16"]
}

# create subnet
resource "azurerm_subnet" "mysubnet" {
    name = "mysubnet1"
    virtual_network_name = azurerm_virtual_network.myvnet.name
    resource_group_name = azurerm_resource_group.myrg.name
    address_prefixes = ["10.0.2.0/24"]
}

# create public ip

resource "azurerm_public_ip" "mypublicip" {
    # here add explicitly dependency to have this resource created only after Virtual Network and Subnet Resources are created. 
    depends_on = [ 
        azurerm_virtual_network.myrg ,
        azurerm_subnet.mysubnet
     ]
     name = "mypublicip1"
     location = azurerm_resource_group.myrg.location
     allocation_method = "static"
     resource_group_name = azurerm_resource_group.myrg.name
}

# create network interface

resource "azurerm_network_interface" "mynic" {
    name = "mynic1"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    ip_configuration {
      name = "internal"
      subnet_id = azurerm_subnet.mysubnet.id
      private_ip_address_allocation = "static"
      public_ip_address_id = azurerm_public_ip.mypublicip.id
    }
  
}