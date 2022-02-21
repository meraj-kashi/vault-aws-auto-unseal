resource "vault_auth_backend" "admin" {
  type = "approle"
}

resource "vault_approle_auth_backend_role" "approle_auth" {
  backend        = vault_auth_backend.admin.path
  role_name      = "admin_approle"
  token_ttl      = 3600
  token_max_ttl  = 3600
  token_policies = [vault_policy.admin.name]
}
