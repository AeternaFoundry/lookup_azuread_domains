output "domains_lookup_id" {
  description = "Map of id values across all domains_lookup, keyed the same as var.domains_lookup"
  value       = { for k, v in data.azuread_domains.domains_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "domains_lookup_admin_managed" {
  description = "Map of admin_managed values across all domains_lookup, keyed the same as var.domains_lookup"
  value       = { for k, v in data.azuread_domains.domains_lookup : k => v.admin_managed if v.admin_managed != null }
}
output "domains_lookup_domains" {
  description = "Map of domains values across all domains_lookup, keyed the same as var.domains_lookup"
  value       = { for k, v in data.azuread_domains.domains_lookup : k => v.domains if v.domains != null && length(v.domains) > 0 }
}
output "domains_lookup_include_unverified" {
  description = "Map of include_unverified values across all domains_lookup, keyed the same as var.domains_lookup"
  value       = { for k, v in data.azuread_domains.domains_lookup : k => v.include_unverified if v.include_unverified != null }
}
output "domains_lookup_only_default" {
  description = "Map of only_default values across all domains_lookup, keyed the same as var.domains_lookup"
  value       = { for k, v in data.azuread_domains.domains_lookup : k => v.only_default if v.only_default != null }
}
output "domains_lookup_only_initial" {
  description = "Map of only_initial values across all domains_lookup, keyed the same as var.domains_lookup"
  value       = { for k, v in data.azuread_domains.domains_lookup : k => v.only_initial if v.only_initial != null }
}
output "domains_lookup_only_root" {
  description = "Map of only_root values across all domains_lookup, keyed the same as var.domains_lookup"
  value       = { for k, v in data.azuread_domains.domains_lookup : k => v.only_root if v.only_root != null }
}
output "domains_lookup_supports_services" {
  description = "Map of supports_services values across all domains_lookup, keyed the same as var.domains_lookup"
  value       = { for k, v in data.azuread_domains.domains_lookup : k => v.supports_services if v.supports_services != null && length(v.supports_services) > 0 }
}

