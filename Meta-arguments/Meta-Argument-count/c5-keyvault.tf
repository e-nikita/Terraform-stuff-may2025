# create key_vault

resource "azurerm_key_vault" "mykeyvault" {
    name = "mykey_vault"
    resource_group_name = azurerm_resource_group.myrg.name
    location = azurerm_resource_group.myrg.location
    tenant_id =  data.azurerm_tenant_config.tenant_id
    sku_name = "standard"
    soft_delete_retention_days = "7"
}