output "security_center_subscription_pricings_extension" {
  description = "Map of extension values across all security_center_subscription_pricings, keyed the same as var.security_center_subscription_pricings"
  value       = { for k, v in azurerm_security_center_subscription_pricing.security_center_subscription_pricings : k => v.extension }
}
output "security_center_subscription_pricings_resource_type" {
  description = "Map of resource_type values across all security_center_subscription_pricings, keyed the same as var.security_center_subscription_pricings"
  value       = { for k, v in azurerm_security_center_subscription_pricing.security_center_subscription_pricings : k => v.resource_type }
}
output "security_center_subscription_pricings_subplan" {
  description = "Map of subplan values across all security_center_subscription_pricings, keyed the same as var.security_center_subscription_pricings"
  value       = { for k, v in azurerm_security_center_subscription_pricing.security_center_subscription_pricings : k => v.subplan }
}
output "security_center_subscription_pricings_tier" {
  description = "Map of tier values across all security_center_subscription_pricings, keyed the same as var.security_center_subscription_pricings"
  value       = { for k, v in azurerm_security_center_subscription_pricing.security_center_subscription_pricings : k => v.tier }
}

