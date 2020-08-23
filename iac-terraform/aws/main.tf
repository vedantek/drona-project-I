provider "aws" {
 region     = "us-east-1"
}

variable "ec2count" {
 default = 1
}

data "aws_ami" "baseami" {
 most_recent = true

 filter {
   name   = "name"
   values = ["gaurav-ami"]
  # name = ["gaurav-ami"]
 }
  owners = ["666451247465"]
}


resource "aws_instance" "apache" {
 ami           = "[data.aws_ami.baseami.id]"
 instance_type = "t2.micro"
 key_name = "aws-demo"
 count = "${var.ec2count}"

 tags = {
   Name ="apache-server-${count.index}"
 }
 
}

output "dns" {
 value = "${aws_instance.apache.*.public_dns}"
}

output "kp" {
 value = "${aws_instance.apache.*.key_name}"
}

output "status" {
  value = "${aws_instance.apache.*.instance_state}"
}

