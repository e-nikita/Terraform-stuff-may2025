
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
<<<<<<< HEAD
    allocation_method = "Dynamic"
=======
    allocation_method = "Static"
>>>>>>> 97c399152fc9723a3a9984a239ffec8b8933e911
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
<<<<<<< HEAD
      private_ip_address_allocation = "static"
      public_ip_address_id = azurerm_public_ip.my-publicip.name
=======
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id = azurerm_public_ip.my-publicip.id
>>>>>>> 97c399152fc9723a3a9984a239ffec8b8933e911
    }
}

# create virtual network for our azure resources
<<<<<<< HEAD
resource "azurerm_virtual_network" "testingvnet" {
=======
/* resource "azurerm_virtual_network" "testingvnet" {
>>>>>>> 97c399152fc9723a3a9984a239ffec8b8933e911
    name = "testingvnet1"
    address_space = ["10.0.0.0/16"]
    location = azurerm_resource_group.testingrg.location
    resource_group_name = azurerm_resource_group.testingrg.name
    tags = {
        name = "testingvent1"
        environment = "dev"
    }
<<<<<<< HEAD
}

# create subnet

resource "azurerm_subnet" "mysubnet" {
=======
} */

# create subnet

/*resource "azurerm_subnet" "mysubnet" {
>>>>>>> 97c399152fc9723a3a9984a239ffec8b8933e911
    name = "testingsubnet1"
    virtual_network_name = azurerm_virtual_network.testingvnet.name
    resource_group_name = azurerm_resource_group.testingrg.name
    address_prefixes = ["10.0.0.0/24"] 
<<<<<<< HEAD
}

# create public ip address

resource "azurerm_public_ip" "my-publicip" {
=======
}*/

# create public ip address

/*resource "azurerm_public_ip" "my-publicip" {
>>>>>>> 97c399152fc9723a3a9984a239ffec8b8933e911
    name = "my-public-ip-1"
    resource_group_name = azurerm_resource_group.testingrg.name
    location = azurerm_resource_group.testingrg.location
    allocation_method = "Dynamic"
    tags = {
        environment = "dev"
    } 
<<<<<<< HEAD
}

# Create network interface

resource "azurerm_network_interface" "my-nic" {
=======
}*/

# Create network interface

/*resource "azurerm_network_interface" "my-nic" {
>>>>>>> 97c399152fc9723a3a9984a239ffec8b8933e911
    name = "my-nic-1"
    resource_group_name = azurerm_resource_group.testingrg.name
    location = azurerm_resource_group.testingrg.location
    ip_configuration {
      name = "internet"
      subnet_id = azurerm_subnet.mysubnet.id
      private_ip_address_allocation = "static"
      public_ip_address_id = azurerm_public_ip.my-publicip.name
    }
<<<<<<< HEAD
}

# Network security group

resource "azurerm_network_security_group" "mynsg" {
=======
}*/

# Network security group

/*resource "azurerm_network_security_group" "mynsg" {
>>>>>>> 97c399152fc9723a3a9984a239ffec8b8933e911
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
  
<<<<<<< HEAD
}
=======
}*/
>>>>>>> 97c399152fc9723a3a9984a239ffec8b8933e911

