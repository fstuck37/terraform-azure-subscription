output "azurerm_storage_account_ids" {
  value = azurerm_storage_account.regions_logsa
}

output "network_watcher_name" {
  value = azurerm_network_watcher.flow-log.name
}