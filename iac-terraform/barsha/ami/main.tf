provider "aws" {
    region = "ap-south-1"
}


resource "aws_ami_copy" "nginx-ami-copy" {
    name = "nginx-ami"
    source_ami_id = "ami-06a8448887f8c3eff"
    source_ami_region = "us-east-1"
}