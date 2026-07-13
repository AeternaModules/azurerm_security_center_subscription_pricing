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
    resource_type = optional(string)
    subplan       = optional(string)
    extension = optional(list(object({
      additional_extension_properties = optional(map(string))
      name                            = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.security_center_subscription_pricings : (
        v.resource_type == null || (contains(["AI", "Api", "AppServices", "ContainerRegistry", "KeyVaults", "KubernetesService", "SqlServers", "SqlServerVirtualMachines", "StorageAccounts", "VirtualMachines", "Arm", "Dns", "OpenSourceRelationalDatabases", "Containers", "CosmosDbs", "CloudPosture"], v.resource_type))
      )
    ])
    error_message = "must be one of: AI, Api, AppServices, ContainerRegistry, KeyVaults, KubernetesService, SqlServers, SqlServerVirtualMachines, StorageAccounts, VirtualMachines, Arm, Dns, OpenSourceRelationalDatabases, Containers, CosmosDbs, CloudPosture"
  }
  validation {
    condition = alltrue([
      for k, v in var.security_center_subscription_pricings : (
        v.extension == null || alltrue([for item in v.extension : (length(trimspace(item.name)) > 0)])
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.security_center_subscription_pricings : (
        v.extension == null || alltrue([for item in v.extension : (item.additional_extension_properties == null || (alltrue([for x in item.additional_extension_properties : length(trimspace(x)) > 0])))])
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

