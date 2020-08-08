provider "aws" {
    region = "ap-south-1"
}


resource "aws_ami_1" "nginx-ami-1" {
    name = "nginx-ami"
    source_ami_id = "ami-0ac80df6eff0e70b5"
    source_ami_region = "us-east-1"
}