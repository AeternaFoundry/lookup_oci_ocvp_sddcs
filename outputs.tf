output "ocvp_sddcs_lookup_id" {
  description = "Map of id values across all ocvp_sddcs_lookup, keyed the same as var.ocvp_sddcs_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_ocvp_sddcs.ocvp_sddcs_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ocvp_sddcs_lookup_compartment_id" {
  description = "Map of compartment_id values across all ocvp_sddcs_lookup, keyed the same as var.ocvp_sddcs_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_ocvp_sddcs.ocvp_sddcs_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "ocvp_sddcs_lookup_compute_availability_domain" {
  description = "Map of compute_availability_domain values across all ocvp_sddcs_lookup, keyed the same as var.ocvp_sddcs_lookup except keys with no compute_availability_domain are omitted"
  value       = { for k, v in data.oci_ocvp_sddcs.ocvp_sddcs_lookup : k => v.compute_availability_domain if v.compute_availability_domain != null && length(v.compute_availability_domain) > 0 }
}
output "ocvp_sddcs_lookup_display_name" {
  description = "Map of display_name values across all ocvp_sddcs_lookup, keyed the same as var.ocvp_sddcs_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_ocvp_sddcs.ocvp_sddcs_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "ocvp_sddcs_lookup_filter" {
  description = "Map of filter values across all ocvp_sddcs_lookup, keyed the same as var.ocvp_sddcs_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_ocvp_sddcs.ocvp_sddcs_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "ocvp_sddcs_lookup_sddc_collection" {
  description = "Map of sddc_collection values across all ocvp_sddcs_lookup, keyed the same as var.ocvp_sddcs_lookup except keys with no sddc_collection are omitted"
  value       = { for k, v in data.oci_ocvp_sddcs.ocvp_sddcs_lookup : k => v.sddc_collection if v.sddc_collection != null && length(v.sddc_collection) > 0 }
}
output "ocvp_sddcs_lookup_state" {
  description = "Map of state values across all ocvp_sddcs_lookup, keyed the same as var.ocvp_sddcs_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_ocvp_sddcs.ocvp_sddcs_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

