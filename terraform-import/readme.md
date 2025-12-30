# Terraform import Introduction
# Introduction 
 # 1. Terraform is able to import existing infrastructure.
    # This allows you take resources you've created by some other means and bring it under 
 # 2. Terraform management.
 
 Step :2
 create resource group manually from azure portal console.

 Step :3
 create basic terraform configuration file.
 c1-versions.tf
 c2-resourcegrp.tf
 Create Azure Resource Group Resource - Basic Version to get Terraform Resource Type and Resource Local Name we are going to use in Terraform
# Resource Group
resource "azurerm_resource_group" "myrg" {
}

Step :4
Run terraform import to import azure resource group to terraform state.
# terraform init
Terraform Import Command for Azure Resource Group
# terraform import azurerm_resource_group.example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example
# terraform import azurerm_resource_group.example /subscriptions/<SUBSCRIPTION_ID>/resourceGroups/<RESOURCE_GROUP_NAME>
# terraform import azurerm_resource_group.myrg /subscriptions/82808767-144c-4c66-a320-b30791668b0a/resourceGroups/myrg1

Observation:
1) terraform.tfstate file will be created locally in Terraform working directory
2) Review information about imported instance configuration in terraform.tfstate

# List Resources from Terraform State
terraform state list

step :5 Start building local c2-resourcegrp.tf 
# By referring terraform.tfstate file and parallely running terraform plan command make changes to your terraform configuration c2-resource-group.tf till you get the message No changes. Infrastructure is up-to-date for terraform plan output

# Resource Group
resource "azurerm_resource_group" "myrg" {
  name = "myrg1"
  location = "eastus"
}

Step :6 Modify resource group from terraform
# You have created this Azure Resource Group manually and now you made it as terraform managed
# Modify this resource group by adding new tags

# Resource Group
resource "azurerm_resource_group" "myrg" {
  name = "myrg1"
  location = "eastus"
  tags = {
    "Tag1" = "My-tag-1"
  }
}

Step :7 Execute terraform commands
# Terraform Plan
terraform plan

# Terraform Apply
terraform apply -auto-approve
Observation:
1) Azure Resource Group on Azure Cloud should have the recently added tags. 


