resource "aws_instance" "web" {
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.coreinfra_tf_subnets.id

  tags = {
    Name = "tf_test"
  }
}
