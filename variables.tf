variable "region" {
  type        = string
  description = "Required : The main Azure Region"
  
  validation {
    condition = (
      contains(["eastus", "eastus2", "southcentralus", "westus2", "australiaeast", "southeastasia", "northeurope", "uksouth", "westeurope", "centralus", "northcentralus", "westus", "southafricanorth", "centralindia", "eastasia", "japaneast", "jioindiawest", "koreacentral", "canadacentral", "francecentral", "germanywestcentral", "norwayeast", "switzerlandnorth", "uaenorth", "brazilsouth", "centralusstage", "eastusstage", "eastus2stage", "northcentralusstage", "southcentralusstage", "westusstage", "westus2stage", "asia", "asiapacific", "australia", "brazil", "canada", "europe", "global", "india", "japan", "uk", "unitedstates", "eastasiastage", "southeastasiastage", "centraluseuap", "eastus2euap", "westcentralus", "westus3", "southafricawest", "australiacentral", "australiacentral2", "australiasoutheast", "japanwest", "koreasouth", "southindia", "westindia", "canadaeast", "francesouth", "germanynorth", "norwaywest", "switzerlandwest", "ukwest", "uaecentral", "brazilsoutheast"], var.region)
    )
    error_message = "The region is not valid."
  }
}

variable "regions" {
  type = list(string)
  description = "Required : List of Azure Regions"
  default = []
}

variable "name-vars" {
  description = "Required : Map with two keys account and name. Names of elements are created based on these values."
  type = map(string)

  validation {
    condition = (
      contains(keys(var.name-vars), "account") && 
      contains(keys(var.name-vars), "name")
    )
    error_message = "The input name-vars must contain two elements account and name."
  }
}

variable "account_replication_type" {
  type = string
  default = "LRS"
}

variable "account_tier" {
  type = string
  default = "Standard"
}