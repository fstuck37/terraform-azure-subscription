output "azurerm_storage_account_ids" {
  value = local.azurerm_storage_account_ids
}

output "network_watcher_names" {
  value = local.network_watcher_names
}

output "network_watcher_resource_group_name" {
  value = "rg-acct-${var.name-vars["account"]}"
}
