resource "aws_ami_copy" "gaurav-ami-copy" {
    name = "gaurav-ami"
    source_ami_id = "ami-06177f0586a2bccc3"
    source_ami_region = "us-east-1"
}