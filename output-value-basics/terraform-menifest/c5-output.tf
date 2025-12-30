# output values

output "resource_group_name" {
  description = "Resource group name"
  value = azurerm_resource_group.rg1.name
}

output "virtual_network_name" {
  description = "Virtual network name"
  value = azurerm_virtual_network.myvnet.name
  sensitive = true  # hide sensitive info. i.e when you run terraform output vnet name,
                    # # it will provide info by hiding details.
}


