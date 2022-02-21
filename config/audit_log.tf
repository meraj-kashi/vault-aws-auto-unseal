###############################################################################
## Vault audit log
resource "vault_audit" "vault_auto_unseal_audit_log" {
  type = "file"

  options = {
    file_path = "/var/log/vault/vault_audit.log"
  }
}
