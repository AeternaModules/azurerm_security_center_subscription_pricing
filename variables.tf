variable "security_center_subscription_pricings" {
  description = <<EOT
Map of security_center_subscription_pricings, attributes below
Required:
    - tier
Optional:
    - resource_type
    - subplan
    - extension (block):
        - additional_extension_properties (optional)
        - name (required)
EOT

  type = map(object({
    tier          = string
    resource_type = optional(string) # Default: "VirtualMachines"
    subplan       = optional(string)
    extension = optional(object({
      additional_extension_properties = optional(map(string))
      name                            = string
    }))
  }))
}

