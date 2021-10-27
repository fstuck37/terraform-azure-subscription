output "azurerm_storage_account_ids" {
  value = zipmap(var.regions, azurerm_storage_account.regions_logsa.*.id)
}

