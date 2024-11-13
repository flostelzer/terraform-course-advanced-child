variable "resource_group_name" {
  description = "Defines the resource group name for the Azure Container Registry."
  type        = string
  default     = "rg-tfschool-dev-chn-1"
}

variable "location" {
  description = "Defines the location, where the Azure Container Registry is deployed."
  type        = string
  default     = "switzerlandnorth"
}

variable "azure_container_registry_name" {
  description = "Defines the name of the Azure Container Registry."
  type        = string
  default     = "acrtfsdevchn1"
  validation {
    condition     = can(regex("^[a-zA-Z0-9]+$", var.azure_container_registry_name))
    error_message = "Value must be alphanumeric."
  }
  sensitive = false
  nullable  = false
}

variable "azure_container_registry_sku" {
  description = "Defines the SKU-Level of the Azure Container Registry (Basic, Standard, Premium)."
  type        = string
  default     = "Standard"
  validation {
    condition     = contains(["Premium", "Standard"], var.azure_container_registry_sku)
    error_message = "Value must be one of the listed SKUs."
  }
}

variable "azure_container_admin_enabled" {
  description = "Defines if admin is enabled on the Azure Container Registry."
  type        = bool
  default     = false
}

variable "log_analytics_workspace_name" {
  description = "Defines the name of the Log Analytics Workspace."
  type        = string
  default     = "law-tfschool-dev-chn-1"
}

variable "log_analytics_workspace_sku" {
  description = "Defines the SKU-Level of the Log Analytics Workspace."
  type        = string
  default     = "PerGB2018"
  validation {
    condition     = contains(["PerNode", "Premium", "Standard", "Standalone", "Unlimited", "PerGB2018"], var.log_analytics_workspace_sku)
    error_message = "Value must be one of the listed SKUs."
  }
}

variable "log_analytics_workspace_retention_in_days" {
  description = "Defines the retention of logs in days for the Log Analytics Workspace."
  type        = number
  default     = 30
}

variable "tags" {
  description = "Defines the used tags for the Azure Container Registry."
  type        = map(string)
  default     = {}
}
