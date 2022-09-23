resource "azurerm_api_management" "apim" {
  name                = var.apim_name
  location            = var.location
  resource_group_name = var.resource_group_name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
  sku_name            = var.sku_name
   lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

resource "azurerm_api_management_api" "api" {
  name                = var.api_name
  resource_group_name = var.resource_group_name
  api_management_name = azurerm_api_management.apim.name
  revision            = var.revision
  display_name        = var.display_name
  path                = var.path
  protocols           = var.protocols

  import {
    content_format = var.content_format
    content_value  = var.content_value
  }
}




