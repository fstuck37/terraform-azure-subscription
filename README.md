Azure Subscription
=============

This module deploys items to Azure Subscription to setup one time items per subscription.
This includes a storage account for logs and Network Watcher.


Example
------------
```
module "acct" {
  source = "git::https://github.com/fstuck37/terraform-azure-subscription.git"
  region    = var.region
  regions   = var.regions
  name-vars = var.name-vars
}

variable "region" {
  default = "eastus2"
}

variable "regions" {
  default = ["eastus2", "westus2"]
}

variable "name-vars" {
  type = map(string)
  default = {
    account = "dev"
    name    = "poc"
  }
}
```

Argument Reference
------------
   * **region** - Required : The main Azure Region to deploy resources to.
   * **regions** - Required : The Azure Regions to setup storage accounts in.
   * **name-vars** - Optional : A map with keys account and name that are used to build the name of components.
   * **tags** - Optional : A map of tags to assign to the resource.
   * **account_replication_type** - Optional: default is LRS
   * **account_tier** - default is Standard

Output Reference
------------
   * **azurerm_storage_account_ids** - Storage Account IDS
   * **network_watcher_names** - Network Watcher Name
   * **network_watcher_resource_group_name** - The name of the resource group
