output "security_center_subscription_pricings" {
  description = "All security_center_subscription_pricing resources"
  value       = azurerm_security_center_subscription_pricing.security_center_subscription_pricings
}
output "security_center_subscription_pricings_extension" {
  description = "List of extension values across all security_center_subscription_pricings"
  value       = [for k, v in azurerm_security_center_subscription_pricing.security_center_subscription_pricings : v.extension]
}
output "security_center_subscription_pricings_resource_type" {
  description = "List of resource_type values across all security_center_subscription_pricings"
  value       = [for k, v in azurerm_security_center_subscription_pricing.security_center_subscription_pricings : v.resource_type]
}
output "security_center_subscription_pricings_subplan" {
  description = "List of subplan values across all security_center_subscription_pricings"
  value       = [for k, v in azurerm_security_center_subscription_pricing.security_center_subscription_pricings : v.subplan]
}
output "security_center_subscription_pricings_tier" {
  description = "List of tier values across all security_center_subscription_pricings"
  value       = [for k, v in azurerm_security_center_subscription_pricing.security_center_subscription_pricings : v.tier]
}

