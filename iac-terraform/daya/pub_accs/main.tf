resource "aws_s3_bucket" "altersic" {
  bucket = "altersic"
}

resource "aws_s3_bucket_public_access_block" "altersic" {
  bucket = aws_s3_bucket.altersic.id

  block_public_acls   = true
  block_public_policy = true
}
