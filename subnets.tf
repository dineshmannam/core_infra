resource "aws_subnet" "coreinfra_tf_subnet1" {
  vpc_id     = aws_vpc.coreinfra_tf_vpc.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "tf_subnet1"
  }
}
