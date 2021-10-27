Azure Subscription
=============

This module deploys items to Azure Subscription to setup one time items per subscription.
This includes a storage account for logs and Network Watcher.


Example
------------
```
module "vnet" {
  source = "git::https://github.com/fstuck37/terraform-azure-subscription.git"
  region = var.region
  region = var.regions

  name-vars = var.name-vars
  vnet-cidrs = var.vnet-cidrs
  subnets = var.subnets  
  domain_name_servers = var.domain_name_servers
  tags = var.tags
}

variable "log-storage-account" {
  default = "/subscriptions/12345678-abcd-1234-def1-1234567890ab/resourceGroups/rg_storageaccount/providers/Microsoft.Storage/storageAccounts/logsexample"
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
   * **network_watcher_name** - Network Watcher Name