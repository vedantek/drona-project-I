provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "project" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "siva_vpc"
  }
}

resource "aws_subnet" "project" {
  vpc_id     = aws_vpc.project.id
  cidr_block = "10.0.1.0/28"

  tags = {
    Name = "private subnet"
  }
}

output "value1" {
	value = "${aws_vpc.project.id}"
}

output "value2" {
	value = "${aws_subnet.project.id}"
}