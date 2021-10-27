locals {
  azurerm_storage_account_ids = {
    for k, stg in azurerm_storage_account.regions_logsa k => stg.id
  }
}
