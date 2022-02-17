//--------------------------------------------------------------------
// Master Key Encryption Provider instance
//    This node does not participate in the HA clustering
resource "aws_kms_key" "vault" {
  description             = "Vault unseal key"
  deletion_window_in_days = 10

  tags = {
    Name = "vault-kms-unseal-123"
  }
}
