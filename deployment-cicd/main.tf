# S3 bucket resource
resource "aws_s3_bucket" "my_bucket" {
  bucket = "cap-vault-circleci-demo"
}
