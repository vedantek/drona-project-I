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
   values = ["nginx-ami"]
 }
  owners = ["953923190053"]
}


resource "aws_instance" "nginx" {
 ami           = "${data.aws_ami.baseami.id}"
 instance_type = "t2.micro"
 key_name = "ubuntu16"
 count = "${var.ec2count}"

 tags = {
   Name ="nginx-server-${count.index}"
 }
 
}

output "dns" {
 value = "${aws_instance.nginx.*.public_dns}"
}