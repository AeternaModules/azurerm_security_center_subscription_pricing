output "security_center_subscription_pricings_id" {
  description = "Map of id values across all security_center_subscription_pricings, keyed the same as var.security_center_subscription_pricings"
  value       = { for k, v in azurerm_security_center_subscription_pricing.security_center_subscription_pricings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "security_center_subscription_pricings_extension" {
  description = "Map of extension values across all security_center_subscription_pricings, keyed the same as var.security_center_subscription_pricings"
  value       = { for k, v in azurerm_security_center_subscription_pricing.security_center_subscription_pricings : k => v.extension if v.extension != null && length(v.extension) > 0 }
}
output "security_center_subscription_pricings_resource_type" {
  description = "Map of resource_type values across all security_center_subscription_pricings, keyed the same as var.security_center_subscription_pricings"
  value       = { for k, v in azurerm_security_center_subscription_pricing.security_center_subscription_pricings : k => v.resource_type if v.resource_type != null && length(v.resource_type) > 0 }
}
output "security_center_subscription_pricings_subplan" {
  description = "Map of subplan values across all security_center_subscription_pricings, keyed the same as var.security_center_subscription_pricings"
  value       = { for k, v in azurerm_security_center_subscription_pricing.security_center_subscription_pricings : k => v.subplan if v.subplan != null && length(v.subplan) > 0 }
}
output "security_center_subscription_pricings_tier" {
  description = "Map of tier values across all security_center_subscription_pricings, keyed the same as var.security_center_subscription_pricings"
  value       = { for k, v in azurerm_security_center_subscription_pricing.security_center_subscription_pricings : k => v.tier if v.tier != null && length(v.tier) > 0 }
}

