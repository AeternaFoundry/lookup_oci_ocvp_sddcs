variable "ocvp_sddcs_lookup" {
  description = <<EOT
Map of ocvp_sddcs_lookup, attributes below
Required:
    - compartment_id
Optional:
    - compute_availability_domain
    - display_name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id              = string
    compute_availability_domain = optional(string)
    display_name                = optional(string)
    state                       = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

