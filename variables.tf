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

variable "sku_name" {
  type        = string
  description = "sku_name is a string consisting of two parts separated by an underscore(_). The first part is the name, valid values include: Consumption, Developer, Basic, Standard and Premium. The second part is the capacity (e.g. the number of deployed units of the sku), which must be a positive integer (e.g. Developer_1)."
}

variable "publisher_name" {
  type        = string
  description = "The name of publisher/company."
}

variable "publisher_email" {
  type        = string
  description = "The email of publisher/company."
}

variable "api_name" {
  type        = string
  description = "name of the azurerm_api_management_api"
}

variable "revision" {
  type        = string
  description = "The Revision which used for this API."
  default     = "1"
}

variable "display_name" {
  type        = string
  description = "The display name of the API."
}

variable "path" {
  type        = string
  description = " The Path for this API Management API, which is a relative URL which uniquely identifies this API and all of its resource paths within the API Management Service."
}

variable "protocols" {
  type        = list(string)
  description = " A list of protocols the operations in this API can be invoked. Possible values are http, https, ws, and wss"
}

variable "content_format" {
  type        = string
  description = "The format of the content from which the API Definition should be imported. Possible values are: openapi, openapi+json, openapi+json-link, openapi-link, swagger-json, swagger-link-json, wadl-link-json, wadl-xml, wsdl and wsdl-link."
}

variable "content_value" {
  type        = string
  description = "The Content from which the API Definition should be imported. When a content_format of *-link-* is specified this must be a URL, otherwise this must be defined inline."

}