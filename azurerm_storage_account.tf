resource "azurerm_storage_account" "regions_logsa" {
  for_each = { for v in distinct(concat([var.region],var.regions)): v => v }
    name                     = "${substr(var.name-vars["account"], 0, 24-(length(each.key)+5))}${each.key}logsa"
    resource_group_name      = azurerm_resource_group.rg-acct.name
    location                 = each.key
    account_replication_type = var.account_replication_type
    account_tier             = var.account_tier
    enable_blob_encryption   = true
    tags                     = var.tags
}