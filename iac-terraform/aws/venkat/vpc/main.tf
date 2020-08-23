provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "tv_vpc"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "tv_sub"
  }
}

output "value1" {
	value = "${aws_vpc.main.id}"
}

output "value2" {
	value = "${aws_subnet.main.id}"
}
