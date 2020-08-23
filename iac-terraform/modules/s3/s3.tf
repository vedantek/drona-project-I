resource "aws_s3_bucket" "covid-19-20" {
  bucket = "${var.bucket-name}"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
