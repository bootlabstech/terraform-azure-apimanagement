variable "resource_group_name" {
  type        = string
  description = "name of the resource group"
}

variable "location" {
  type        = string
  description = "location of the resource group"
}

variable "apim_name" {
  type        = string
  description = "name of the azurerm_api_management"
}

variable "api_name" {
  type        = string
  description = "name of the azurerm_api_management_api"
}
