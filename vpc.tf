resource "aws_vpc" "coreinfra_tf_vpc" {
  cidr_block       = "190.160.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name     = "main"
    Location = "Hackensack"
  }
}
