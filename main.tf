data "azuread_domains" "domains_lookup" {
  for_each = var.domains_lookup

  admin_managed      = each.value.admin_managed
  include_unverified = each.value.include_unverified
  only_default       = each.value.only_default
  only_initial       = each.value.only_initial
  only_root          = each.value.only_root
  supports_services  = each.value.supports_services

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

