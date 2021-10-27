locals {
  azurerm_storage_account_ids = {
    for k, stg in azurerm_storage_account.regions_logsa : k => stg.id
  }

  network_watcher_names = {
    for k, wat in azurerm_storage_account.azurerm_network_watcher : k => wat.name
  }
}
