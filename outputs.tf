output "kerberos_auth_backend_groups_mount" {
  description = "Map of mount values across all kerberos_auth_backend_groups, keyed the same as var.kerberos_auth_backend_groups except keys with no mount are omitted"
  value       = { for k, v in vault_kerberos_auth_backend_group.kerberos_auth_backend_groups : k => v.mount if v.mount != null && length(v.mount) > 0 }
}
output "kerberos_auth_backend_groups_name" {
  description = "Map of name values across all kerberos_auth_backend_groups, keyed the same as var.kerberos_auth_backend_groups except keys with no name are omitted"
  value       = { for k, v in vault_kerberos_auth_backend_group.kerberos_auth_backend_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kerberos_auth_backend_groups_namespace" {
  description = "Map of namespace values across all kerberos_auth_backend_groups, keyed the same as var.kerberos_auth_backend_groups except keys with no namespace are omitted"
  value       = { for k, v in vault_kerberos_auth_backend_group.kerberos_auth_backend_groups : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "kerberos_auth_backend_groups_policies" {
  description = "Map of policies values across all kerberos_auth_backend_groups, keyed the same as var.kerberos_auth_backend_groups except keys with no policies are omitted"
  value       = { for k, v in vault_kerberos_auth_backend_group.kerberos_auth_backend_groups : k => v.policies if v.policies != null && length(v.policies) > 0 }
}

