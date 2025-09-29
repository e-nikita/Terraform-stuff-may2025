# deploy windows vms by using meta argument "count"

resource "azurerm_windows_virtual_machine" "mymetavm" {
    count = 3
    name = "myvm-${count.index}"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    network_interface_ids = azurerm_network_interface.myvmnic.id
    size = "Standard D4S_v3"
    admin_username = "testuser"
    admin_password = azurerm_key_vault.mykeyvault.id
    os_disk {
      name = "osdisk${count.index}"
      storage_account_type = "Standard LRS"
      caching = "read/write"
    }

    source_image_reference {
      publisher = "MicrosoftWindowsServer"
      sku = "2019-datacenter"
      offer = "windowsServer"
      version = "latest"
    }
  
}