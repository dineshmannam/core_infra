resource "aws_subnet" "coreinfra_tf_subnets" {
  count      = length(var.azs)
  vpc_id     = aws_vpc.coreinfra_tf_vpc.id
  cidr_block = element(var.subnet_cidr, count.index)

  tags = {
    Name = "tf_subnet"
  }
}
