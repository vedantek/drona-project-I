provider "aws" {
    region = "us-east-2"
}

module "s3-bucket" {
    source = "../modules/s3"
}

module "ami-copy" {
    source = "../modules/ami"
}