variable "workloadName" {
  type = string
  validation {
    condition     = length(var.workloadName) >= 2 && length(var.workloadName) <= 10
    error_message = "Name must be greater at least 2 characters and not greater than 10."
  }
}

variable "environment" {
  type = string
  validation {
    condition     = length(var.environment) <= 8
    error_message = "Environment name can't be greater than 8 characters long."
  }
}

variable "location" {
  type    = string
  default = "northeurope"
}

variable "hubResourceGroupName" {}

variable "tags" {}

variable "vnetAddressPrefixes" {}

variable "enableBastion" {
  default = true
  type    = bool
}

variable "bastionSubnetAddressPrefixes" {}

variable "ddosProtectionPlanId" {
  default = null
  type    = string
}

variable "securityRules" {
  default = []
}

variable "gatewaySubnetName" {
  default = "GatewaySubnet"
  type    = string
}

variable "gatewaySubnetAddressPrefix" {}

variable "azureFirewallSubnetName" {
  default = "AzureFirewallSubnet"
  type    = string
}

variable "azureFirewallSubnetAddressPrefix" {}

variable "azureFirewallSubnetManagementName" {
  default = "AzureFirewallManagementSubnet" # must use this name for Firewall Basic SKU
  type    = string
}

variable "azureFirewallSubnetManagementAddressPrefix" {}

variable "infraSubnetAddressPrefix" {}

variable "RESOURCE_GROUP_NAME" {
  description = "Resource group name pass env vairable $RESOURCE_GROUP_NAME"
  type        = string
}

variable "STORAGE_ACCOUNT_NAME" {
  description = "Storage account name pass env vairable $STORAGE_ACCOUNT_NAME"
  type        = string
}


variable "CONTAINER_NAME" {
  description = "Storage container name pass env vairable $CONTAINER_NAME"
  type        = string
}

