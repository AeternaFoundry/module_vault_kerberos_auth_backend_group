variable "kerberos_auth_backend_groups" {
  description = <<EOT
Map of kerberos_auth_backend_groups, attributes below
Required:
    - mount
    - name
Optional:
    - namespace
    - policies
EOT

  type = map(object({
    mount     = string
    name      = string
    namespace = optional(string)
    policies  = optional(set(string))
  }))
}

