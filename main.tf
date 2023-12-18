resource "azurerm_api_management" "example" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
  sku_name = var.sku_name
  # notification_sender_email = var.notification_sender_email
  public_network_access_enabled = var.public_network_access_enabled
  virtual_network_type = var.virtual_network_type
  virtual_network_configuration {
    subnet_id = var.subnet_id
  }
  }

  # dynamic "tenant_access" {
  #   for_each = var.tenant_access ? [{}] : []
  #   content {
  #     enabled = var.tenant_access_enabled
  #   }
  # }

  # dynamic "identity" {
  #   for_each = var.identity ? [{}] : []
  #   content {
  #     type = var.type
  #   }
  # }

  # dynamic "protocols" {
  #   for_each = var.protocols ? [{}] : []
  #   content {
  #     enable_http2 = var.enable_http2
  #   }
  # }

  # dynamic "policy" {
  #   for_each = var.policy ? [{}] : []
  #   content {
  #     xml_content = var.xml_content
  #     xml_link    = var.xml_content
  #   }
  # }

  # dynamic "sign_up" {
  #   for_each = var.sign_up ? [{}] : []
  #   content {
  #     enabled = var.sign_up_enabled
  #     terms_of_service {
  #       consent_required   = var.consent_required
  #       enabled = var.terms_of_service_enabled
  #       text  = var.text
        
  #     }
  #   }
  # }

  #  dynamic "security" {
  #   for_each = var.security ? [{}] : []
  #   content {
  #     enable_frontend_tls11  = var.enable_frontend_tls11
  #     enable_frontend_tls10  = var.enable_frontend_tls10
  #     enable_frontend_ssl30  = var.enable_frontend_ssl30
  #     enable_backend_tls11   = var.enable_backend_tls11 
  #     enable_backend_tls10   = var.enable_backend_tls10 
  #     enable_backend_ssl30   = var.enable_backend_ssl30 
  #   }
  # }


  # dynamic "additional_location" {
  #   for_each = var.additional_location ? [{}] : []
  #   content {
  #     location  = var.location
  #     capacity  = var.capacity
  #     zones  = var.zones
  #     public_ip_address_id   = var.public_ip_address_id 
  #     gateway_disabled   = var.gateway_disabled 
  #   }
  # }


  # dynamic "proxy" {
  #   for_each = var.proxy ? [{}] : []
  #   content {
  #     default_ssl_binding  = var.default_ssl_binding
  #     host_name  = var.host_name
  #     key_vault_id  = var.key_vault_id
  #     certificate   = var.certificate 
  #     certificate_password   = var.certificate_password 
  #     negotiate_client_certificate   = var.negotiate_client_certificate
  #     ssl_keyvault_identity_client_id = var.ssl_keyvault_identity_client_id 
  #   }
  # }


  # dynamic "certificate" {
  #   for_each = var.certificate ? [{}] : []
  #   content {
  #     encoded_certificate   = var.encoded_certificate 
  #     store_name  = var.store_name
  #     certificate_password  = var.certificate_password
  #   }
  # }


  # dynamic "delegation" {
  #   for_each = var.delegation ? [{}] : []
  #   content {
  #     subscriptions_enabled  = var.subscriptions_enabled
  #     user_registration_enabled  = var.user_registration_enabled
  #     url  = var.url
  #     validation_key   = var.validation_key 
  #   }
  # }


