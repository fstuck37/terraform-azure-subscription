resource "azurerm_resource_group" "rg-acct" {
  name     = "rg-acct-${var.name-vars["account"]}"
  location = var.region
  tags     = var.tags
}