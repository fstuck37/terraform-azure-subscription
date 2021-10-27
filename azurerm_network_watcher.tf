resource "azurerm_network_watcher" "flow-log" {
  name                = "${var.name-vars["account"]}-${var.region}-${var.name-vars["name"]}-watcher"
  location            = azurerm_resource_group.rg-acct.location
  resource_group_name = azurerm_resource_group.rg-acct.name
  tags                = var.tags
}

