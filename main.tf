resource "vault_kerberos_auth_backend_group" "kerberos_auth_backend_groups" {
  for_each = var.kerberos_auth_backend_groups

  mount     = each.value.mount
  name      = each.value.name
  namespace = each.value.namespace
  policies  = each.value.policies
}

