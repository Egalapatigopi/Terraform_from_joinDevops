resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.project_1_vpc.id
  cidr_block = var.public_subnet

  tags = {
    Name = "Main"
  }
}
resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.project_1_vpc.id
  cidr_block = var.private_subnet

  tags = {
    Name = "Main"
  }
}