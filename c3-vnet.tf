<<<<<<< HEAD
# create virtual network for our azure resources
resource "azurerm_virtual_network" "testingvnet" {
    name = "testingvnet1"
    address_space = ["10.0.0.0/16"]
    location = azurerm_resource_group.testingrg.location
    resource_group_name = azurerm_resource_group.testingrg.name
    tags = {
        name = "testingvent1"
        environment = "dev"
    }
}

# create subnet

resource "azurerm_subnet" "mysubnet" {
    name = "testingsubnet1"
    virtual_network_name = azurerm_virtual_network.testingvnet.name
    resource_group_name = azurerm_resource_group.testingrg.name
    address_prefixes = ["10.0.0.0/24"] 
}

# create public ip address

resource "azurerm_public_ip" "my-publicip" {
    name = "my-public-ip-1"
    resource_group_name = azurerm_resource_group.testingrg.name
    location = azurerm_resource_group.testingrg.location
    allocation_method = "Dynamic"
    tags = {
        environment = "dev"
    } 
}

# Create network interface

resource "azurerm_network_interface" "my-nic" {
    name = "my-nic-1"
    resource_group_name = azurerm_resource_group.testingrg.name
    location = azurerm_resource_group.testingrg.location
    ip_configuration {
      name = "internet"
      subnet_id = azurerm_subnet.mysubnet.id
      private_ip_address_allocation = "static"
      public_ip_address_id = azurerm_public_ip.my-publicip.name
    }
}

=======
# create virtual network for our azure resources
resource "azurerm_virtual_network" "testingvnet" {
    name = "testingvnet1"
    address_space = ["10.0.0.0/16"]
    location = azurerm_resource_group.testingrg.location
    resource_group_name = azurerm_resource_group.testingrg.name
    tags = {
        name = "testingvent1"
        environment = "dev"
    }
}

# create subnet

resource "azurerm_subnet" "mysubnet" {
    name = "testingsubnet1"
    virtual_network_name = azurerm_virtual_network.testingvnet.name
    resource_group_name = azurerm_resource_group.testingrg.name
    address_prefixes = ["10.0.0.0/24"] 
}

# create public ip address

resource "azurerm_public_ip" "my-publicip" {
    name = "my-public-ip-1"
    resource_group_name = azurerm_resource_group.testingrg.name
    location = azurerm_resource_group.testingrg.location
    allocation_method = "Dynamic"
    tags = {
        environment = "dev"
    } 
}

# Create network interface

resource "azurerm_network_interface" "my-nic" {
    name = "my-nic-1"
    resource_group_name = azurerm_resource_group.testingrg.name
    location = azurerm_resource_group.testingrg.location
    ip_configuration {
      name = "internet"
      subnet_id = azurerm_subnet.mysubnet.id
      private_ip_address_allocation = "static"
      public_ip_address_id = azurerm_public_ip.my-publicip.name
    }
}

# Network security group

resource "azurerm_network_security_group" "mynsg" {
    name = "mytestingnsg1"
    resource_group_name = azurerm_resource_group.testingrg.name
    location = azurerm_resource_group.testingrg.location
    security_rule = {
        name = "Allow-RDP"
        port = "3389"
        direction = "Inbound"
        priority = 100
        protocol = "tcp"
        Access = "Allow"
        Source = "Any"
        destination = "Any"
    }
  
}
>>>>>>> 50ab191 (newly updated file)
