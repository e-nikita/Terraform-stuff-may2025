# Create an azure virtual machine.
  
resource "azurerm_windows_virtual_machine" "mywinvm" {
    name = "mywintestvm1"
    location = azurerm_resource_group.testingrg.location
    resource_group_name = azurerm_resource_group.testingrg.name
    size = "standard_D2_v5"
    network_interface_ids = [azurerm_network_interface.my-nic.id]
    admin_username = var.admin_username
    admin_password = var.admin_password
    #admin_username = "testuser"
    #admin_password = azurerm_key_vault.mytestkeyvault.id

    os_disk {
      name = "OSdisk"
      storage_account_type = "Standard_LRS"
      caching = "ReadWrite"
    }
    source_image_reference {
      publisher = "MicrosoftWindowsServer"
      version = "Latest"
      sku = "2019-datacenter"
      offer = "WindowsServer"
    }

}


