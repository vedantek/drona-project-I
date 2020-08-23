provider "aws" {
 region     = "us-east-1"
 version = "~> 3.0"
}

variable "ec2count" {
 default = 1
}

data "aws_ami" "baseami" {

 filter {
   name   = "name"
   #virtualization_type = "hvm"
   #values = ["amazon-NodeJS-node-${aws_NodeJS_cluster.demo.version}-v*"]
   values = ["packer_AWS_NodeJS 1595659040"]
   #values = ["ami-01eaad01ff1bffceb"]
 }
 filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  #most_recent = true
  owners = ["124218035271"]
  #owners = ["amazon"] # Amazon EKS AMI Account ID
}


resource "aws_instance" "NodeJS" {
  #image_id   = "ami-01eaad01ff1bffceb"
  #account_id = "124218035271"
  ami           = data.aws_ami.baseami.id
  instance_type = "t2.micro"
  key_name = "terraform_lab"
  count = var.ec2count

 tags = {
   #Name ="NodeJS-test-${count.index}"
   Name = "NodeJS-test"
 }

}

output "dns" {
 value = "${aws_instance.NodeJS.*.public_dns}"
}