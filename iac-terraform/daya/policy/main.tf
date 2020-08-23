resource "aws_s3_bucket" "altersic" {
  bucket = "altersic"
}
resource "aws_s3_bucket_policy" "altersic" {
  bucket = aws_s3_bucket.altersic.id 
  
  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Sid": "IPAllow",
      "Effect": "Deny",
      "Principal": "*",
      "Action": "s3:*",
      "Resource": "arn:aws:s3:::altersic/*",
      "Condition": {
         "IpAddress": {"aws:SourceIp": "192.168.0.103/24"}
      }
    }
  ]
}
POLICY
}
