# create a key vault to secure passwords and secrets

/*resource "azurerm_key_vault" "mytestkeyvault" {
    name = "mykeyvault1"
    resource_group_name = azurerm_resource_group.myrg1.name
    location = azurerm_resource_group.myrg1.location
    sku_name = "standard"
    tenant_id = data.azurerm_tenant_config.tenant_id
    soft_delete_retention_days = "7"
}*/