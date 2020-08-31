locals {
  subnets_ids = [
    "${var.public-a-subnet-id}",
    "${var.public-b-subnet-id}",
  ]
}

resource "aws_instance" "web" {
  count = "${var.ec2-count}"

  ami           = "${data.aws_ami.webapp-ami.id}"
  #ami= "ami-0a63cd87767e10ed4"
  instance_type = "t2.micro"

  subnet_id = "${element(local.subnets_ids, count.index)}"

  vpc_security_group_ids = [
    "${aws_security_group.web.id}",
  ]

  key_name = "${aws_key_pair.id_dummy.key_name}"

  tags ={
    environment = "${var.environment}"
    Name = "webapp-${count.index}"
  }
}