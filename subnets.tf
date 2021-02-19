resource "aws_subnet" "coreinfra_tf_subnet1" {
  vpc_id     = aws_vpc.coreinfra_tf_vpc.id
  cidr_block = "190.160.1.0/24"

  tags = {
    Name = "subnet1"
  }
}
