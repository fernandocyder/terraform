resource "aws_instance" "example" {
  ami           = "ami-0ac80df6eff0e70b5"
  instance_type = "t2.micro"
}

resource "aws_instance" "example-local-exec" {
  ami           = "ami-0ac80df6eff0e70b5"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
  }
}
