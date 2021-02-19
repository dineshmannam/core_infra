resource "aws_vpc" "coreinfra_tf_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name     = "tf_main"
    Location = "Hackensack"
  }
}
