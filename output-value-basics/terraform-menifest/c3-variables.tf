# Create Variables

variable "location" {
    description = "location"
    type = "string"
    default = "eastus"  
}

variable "environment" {
  description = "environment name"
  type = "string"
  default = "dev"
}

variable "resource_group_name" {
    description = "resource group name"
    type = "string"
    default = "myrg"  

}

variable "business_name" {
    description = "Business unit name"
    type = "string"
    default = "hr"  
}

variable "virtual_network_name" {
  description = "virtual network name"
  type = "string"
  default = "vnet"
}