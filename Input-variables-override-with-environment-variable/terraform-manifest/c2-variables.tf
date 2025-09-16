# Variables

 variable "business_unit" {
    description = "Business Unit Name"
    type = string
    default = "HR"  
}

variable "environment" {
    description = "Environment Name"
    type = string
    default = "Test"
}

variable "resource_group_name" {
    description = "Resource Group Name"
    type = string
    default = "myrg"  
}

variable "virtual_network_name" {
    description = "Virtual Network Name"
    type = string
    default = "myvnet"  
}

variable "resource_group_location" {
    description = "Resource Group Location"
    type = string
    default = "west europe"
}


