data "azurerm_subscription" "current" {
}

resource "azurerm_key_vault" "main" {
  name                        = var.name
  location                    = var.location.name
  resource_group_name         = var.resource_group.name
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  tenant_id                   = data.azurerm_subscription.current.tenant_id
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = var.purge_protection_enabled
  tags                        = var.tags
  sku_name                    = var.sku_name
  enable_rbac_authorization   = true
}