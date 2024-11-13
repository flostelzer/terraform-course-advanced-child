resource "azurerm_container_registry" "tfschool" {
  name                = var.azure_container_registry_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.azure_container_registry_sku
  admin_enabled       = var.azure_container_admin_enabled

  tags = var.tags
}