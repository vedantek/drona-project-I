resource "aws_s3_bucket" "covid-19-20" {
  bucket = "covid-19-2020"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


provider "aws" {
    region = "us-east-1"
}