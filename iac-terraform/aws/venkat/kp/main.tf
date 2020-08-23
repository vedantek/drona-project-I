provider "aws" {
	region = "us-east-2"
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDG6gsITFjFiyFkO0pL4hNFCcvlGOHgVySBygLxaqHA0ROR8nqIn54B1ISAhJ5pef6Mdi0XJUAJIX1XGz811Ly3Kj98VSvtQUJJjrcEEZbvrq5Tv9k1wHRfZcpuE0oy0/o0/TEzKim9q5NO/Uuii1MlMjO+6JxpZCC4bjpoNLsLTPqfR72EVQjDdGARaGVP9LeqRckPCQ1J8ZiYTcqzoLeUBpl/whxTtUPEOHm1iWNqB+8tVj6XDOsnfB+i1erTygOkfFBI+J7pJSgBQR9NIFIvSSvWyVWcz61Rocy3rzsUnaaLIXdI+1InFANnRQ9pu8q34rfgW/wCO6SmW3KneMbf venkat@venkat-Vostro1510"

}

output "kp" {
	value = "${aws_key_pair.deployer.id}"
}
