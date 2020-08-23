provider "aws" {
    region = "ap-south-1"
}

module "s3-bucket" {
    source = "../modules/s3"
}

module "ami-copy" {
    source = "../modules/ami"
}