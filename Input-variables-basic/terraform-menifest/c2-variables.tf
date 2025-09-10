# Create varibles

resource "varibles" "business_unit" {
    description = "Business Unit Name"
    type = string
    default = "HR"  
}

resource "variables" "environment" {
    description = "Environment Name"
    type = string
    default = "Test"
}

resource "variables" "resource_group_name" {
    description = "Resource Group Name"
    type = string
    default = "myrg"  
}

resource "variables" "virtual_network_name" {
    description = "Virtual Network Name"
    type = string
    default = "myvnet"  
}

resource "variables" "resource_group_location" {
    description = "Resource Group Location"
    type = string
    default = "west europe"
}

