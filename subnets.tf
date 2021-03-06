resource "aws_subnet" "coreinfra_tf_subnets" {
  count      = length(data.aws_availability_zones.azs.names)
  vpc_id     = aws_vpc.coreinfra_tf_vpc.id
  cidr_block = element(var.subnet_cidr, count.index)

  tags = {
    Name = "tf_subnet-${count.index + 1}"
  }
}
