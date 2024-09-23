resource "aws_vpc" "project_1_vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.Name
  }
}