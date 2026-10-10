output "apigatewayv2_domain_names_id" {
  description = "Map of id values across all apigatewayv2_domain_names, keyed the same as var.apigatewayv2_domain_names"
  value       = { for k, v in aws_apigatewayv2_domain_name.apigatewayv2_domain_names : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigatewayv2_domain_names_api_mapping_selection_expression" {
  description = "Map of api_mapping_selection_expression values across all apigatewayv2_domain_names, keyed the same as var.apigatewayv2_domain_names"
  value       = { for k, v in aws_apigatewayv2_domain_name.apigatewayv2_domain_names : k => v.api_mapping_selection_expression if v.api_mapping_selection_expression != null && length(v.api_mapping_selection_expression) > 0 }
}
output "apigatewayv2_domain_names_arn" {
  description = "Map of arn values across all apigatewayv2_domain_names, keyed the same as var.apigatewayv2_domain_names"
  value       = { for k, v in aws_apigatewayv2_domain_name.apigatewayv2_domain_names : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "apigatewayv2_domain_names_domain_name" {
  description = "Map of domain_name values across all apigatewayv2_domain_names, keyed the same as var.apigatewayv2_domain_names"
  value       = { for k, v in aws_apigatewayv2_domain_name.apigatewayv2_domain_names : k => v.domain_name if v.domain_name != null && length(v.domain_name) > 0 }
}
output "apigatewayv2_domain_names_domain_name_configuration" {
  description = "Map of domain_name_configuration values across all apigatewayv2_domain_names, keyed the same as var.apigatewayv2_domain_names"
  value       = { for k, v in aws_apigatewayv2_domain_name.apigatewayv2_domain_names : k => one(v.domain_name_configuration) if v.domain_name_configuration != null && length(v.domain_name_configuration) > 0 }
}
output "apigatewayv2_domain_names_mutual_tls_authentication" {
  description = "Map of mutual_tls_authentication values across all apigatewayv2_domain_names, keyed the same as var.apigatewayv2_domain_names"
  value       = { for k, v in aws_apigatewayv2_domain_name.apigatewayv2_domain_names : k => one(v.mutual_tls_authentication) if v.mutual_tls_authentication != null && length(v.mutual_tls_authentication) > 0 }
}
output "apigatewayv2_domain_names_region" {
  description = "Map of region values across all apigatewayv2_domain_names, keyed the same as var.apigatewayv2_domain_names"
  value       = { for k, v in aws_apigatewayv2_domain_name.apigatewayv2_domain_names : k => v.region if v.region != null && length(v.region) > 0 }
}
output "apigatewayv2_domain_names_routing_mode" {
  description = "Map of routing_mode values across all apigatewayv2_domain_names, keyed the same as var.apigatewayv2_domain_names"
  value       = { for k, v in aws_apigatewayv2_domain_name.apigatewayv2_domain_names : k => v.routing_mode if v.routing_mode != null && length(v.routing_mode) > 0 }
}
output "apigatewayv2_domain_names_tags" {
  description = "Map of tags values across all apigatewayv2_domain_names, keyed the same as var.apigatewayv2_domain_names"
  value       = { for k, v in aws_apigatewayv2_domain_name.apigatewayv2_domain_names : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "apigatewayv2_domain_names_tags_all" {
  description = "Map of tags_all values across all apigatewayv2_domain_names, keyed the same as var.apigatewayv2_domain_names"
  value       = { for k, v in aws_apigatewayv2_domain_name.apigatewayv2_domain_names : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

