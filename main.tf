resource "aws_apigatewayv2_domain_name" "apigatewayv2_domain_names" {
  for_each = var.apigatewayv2_domain_names

  domain_name  = each.value.domain_name
  region       = each.value.region
  routing_mode = each.value.routing_mode
  tags         = each.value.tags
  tags_all     = each.value.tags_all

  domain_name_configuration {
    certificate_arn                        = each.value.domain_name_configuration.certificate_arn
    endpoint_type                          = each.value.domain_name_configuration.endpoint_type
    ip_address_type                        = each.value.domain_name_configuration.ip_address_type
    ownership_verification_certificate_arn = each.value.domain_name_configuration.ownership_verification_certificate_arn
    security_policy                        = each.value.domain_name_configuration.security_policy
  }

  dynamic "mutual_tls_authentication" {
    for_each = each.value.mutual_tls_authentication != null ? [each.value.mutual_tls_authentication] : []
    content {
      truststore_uri     = mutual_tls_authentication.value.truststore_uri
      truststore_version = mutual_tls_authentication.value.truststore_version
    }
  }
}

