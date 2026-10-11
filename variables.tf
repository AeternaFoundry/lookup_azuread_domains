variable "domains_lookup" {
  description = <<EOT
Map of domains_lookup, attributes below
Optional:
    - admin_managed
    - include_unverified
    - only_default
    - only_initial
    - only_root
    - supports_services
EOT

  type = map(object({
    admin_managed      = optional(bool)
    include_unverified = optional(bool)
    only_default       = optional(bool)
    only_initial       = optional(bool)
    only_root          = optional(bool)
    supports_services  = optional(list(string))
  }))
}

