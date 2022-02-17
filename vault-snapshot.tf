resource "aws_kms_key" "vault-snapshots" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
}

resource "aws_s3_bucket" "vault-snapshots" {
  bucket = "vault-snapshots-training-auto-unseal"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "vault-snapshots" {
  bucket = aws_s3_bucket.vault-snapshots.bucket

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.vault-snapshots.arn
      sse_algorithm     = "aws:kms"
    }
  }
}
