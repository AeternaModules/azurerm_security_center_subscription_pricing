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
  # --- Unconfirmed validation candidates, derived from azurerm_security_center_subscription_pricing's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: tier
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: resource_type
  #   condition: contains(["AI", "Api", "AppServices", "ContainerRegistry", "KeyVaults", "KubernetesService", "SqlServers", "SqlServerVirtualMachines", "StorageAccounts", "VirtualMachines", "Arm", "Dns", "OpenSourceRelationalDatabases", "Containers", "CosmosDbs", "CloudPosture"], value)
  #   message:   must be one of: AI, Api, AppServices, ContainerRegistry, KeyVaults, KubernetesService, SqlServers, SqlServerVirtualMachines, StorageAccounts, VirtualMachines, Arm, Dns, OpenSourceRelationalDatabases, Containers, CosmosDbs, CloudPosture
  # path: extension.name
  #   source:    validation.StringIsNotWhiteSpace(...) - no translation rule yet, add one
  # path: extension.additional_extension_properties[*]
  #   source:    validation.StringIsNotWhiteSpace(...) - no translation rule yet, add one
}

