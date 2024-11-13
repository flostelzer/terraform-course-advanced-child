output "azure_container_registry_id" {
  description = "Defines the id of the Azure Container Registry."
  value       = azurerm_container_registry.tfschool.id
}

output "azure_container_registry_login_server" {
  description = "Defines the login server for the Azure Container Registry"
  value       = azurerm_container_registry.tfschool.login_server
}

output "azure_container_registry_admin_username" {
  description = "Defines the admin username of the Azure Container Registry, if used."
  value       = var.azure_container_admin_enabled ? azurerm_container_registry.tfschool.admin_username : null
}
