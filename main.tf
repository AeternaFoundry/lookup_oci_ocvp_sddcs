data "oci_ocvp_sddcs" "ocvp_sddcs_lookup" {
  for_each = var.ocvp_sddcs_lookup

  compartment_id              = each.value.compartment_id
  compute_availability_domain = each.value.compute_availability_domain
  display_name                = each.value.display_name
  state                       = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

