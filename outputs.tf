output "azurerm_storage_account_ids" {
  value = local.azurerm_storage_account_ids
}

output "network_watcher_name" {
  value = azurerm_network_watcher.flow-log.name
}