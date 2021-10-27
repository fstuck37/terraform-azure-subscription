resource "azurerm_network_watcher" "flow-log" {
  for_each = { for v in distinct(concat([var.region],var.regions)): v => v }
    name                = "${var.name-vars["account"]}-${each.key}-${var.name-vars["name"]}-watcher"
    location            = each.key
    resource_group_name = azurerm_resource_group.rg-acct.name
    tags                = var.tags
}

