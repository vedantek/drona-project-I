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
   values = ["newrelic-ami"]
 }
  owners = ["283927299649"]
}


resource "aws_instance" "ubuntu" {
 ami = "${data.aws_ami.baseami.id}"
 instance_type = "t2.micro"
 key_name = "neurolic"
 count = "${var.ec2count}"

 tags = {
   Name ="ubuntu-server-${count.index}"
 }
 
}

output "dns" {
 value = "${aws_instance.ubuntu.*.public_dns}"
}