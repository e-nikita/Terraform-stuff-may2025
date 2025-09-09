# create linux azure virtual machine
resource "azurerm_linux_virtual_machine" "mylinuxvm" {
    name = "mylinuxvm1"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    size = "standard_DS1_V2"
    network_interface_ids = azurerm_network_interface.mynic.id
    admin_username = "azureuser"
    os_disk {
      name = "osdisk"
      storage_account_type = "Standard_LRS"
      caching = "ReadWrite"
    }
    source_image_reference {
      publisher = "RedHat"
      offer = "RHEL"
      version = "latest"
      sku = "83-gen2"
    }
    admin_ssh_key {
      username = "azureuser"
      public_key = file("${path.module}/ssh-keys/terraform-azure.pub")
    }
    custom_data = filebase64("${path.module}/app-scripts/app1-cloud-init.txt")
  
}