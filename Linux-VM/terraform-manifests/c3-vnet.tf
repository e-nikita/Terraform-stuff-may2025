# Create virtual network
resource "azurerm_virtual_network" "myvnet" {
    name = "myvnet1"
    location = azurerm_resource_group.myrg.location
    resource_group_name = azurerm_resource_group.myrg.name
    address_space = ["10.0.0.0/16"] 
}

# Create virtual subnet
resource "azurerm_subnet" "mysubnet" {
    name = "mysubnet1"
    resource_group_name = azurerm_resource_group.myrg.name
    virtual_network_name = azurerm_virtual_network.myvnet.name
    address_prefixes = ["10.0.2.0/24"]
}

# Create network interface
resource "azurerm_network_interface" "mynic" {
    name = "myvmnic1"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    ip_configuration {
      name = "internal"
      subnet_id = azurerm_subnet.mysubnet.id
      private_ip_address_allocation = "static"
      public_ip_address_id = azurerm_public_ip.mypublicip.id
    }
}

# Create Public ip address
resource "azurerm_public_ip" "mypublicip" {
    name = "mypublicip1"
    allocation_method = "Static"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    domain_name_label = "app1-vm-${random_string.myrandom.id}"  
}