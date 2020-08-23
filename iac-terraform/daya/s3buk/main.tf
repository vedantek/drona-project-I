provider "aws" {
 region     = "us-east-1"
}
resource "aws_s3_bucket" "alteresic" {
  bucket = "altersic"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

module "policy" {
   source = "../policy"
}

module "pub_accs" {
   source = "../pub_accs"
}
