# policies
resource "vault_policy" "test" {
  name = "test"

  policy = <<EOT
    path "test/*" {
      capabilities = ["create", "read", "update", "delete", "list"]
    }
    path "auth/test/*" {
      capabilities = ["create", "read", "update", "delete", "list"]
    }
    path "sl18/prod/aws/creds/list" {
      capabilities = ["create", "read", "update", "delete", "list"]
    }
    path "sl18/prod/aws/roles" {
        capabilities = ["list"]
    }
    EOT
}
