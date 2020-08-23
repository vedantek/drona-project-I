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
   values = ["Splunk-ami"]
 }
  owners = ["876313365522"]
}


resource "aws_instance" "splunk" {
 ami           = "${data.aws_ami.baseami.id}"
 instance_type = "t2.micro"
 key_name = "splunk-test"
 count = "${var.ec2count}"

 tags = {
   Name ="splunk-server-${count.index}"
 }

}

output "dns" {
 value = "${aws_instance.splunk.*.public_dns}"
}
