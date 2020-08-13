  
provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "chan" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "chan_vpc"
  }
}


resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.chan.id

  tags = {
    Name = "siva"
  }
}


output "value1" {
	value = "${aws_vpc.chan.id}"
}

output "value2" {
	value = "${aws_internet_gateway.gw.id}"
}