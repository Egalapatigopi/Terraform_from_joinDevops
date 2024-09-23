resource "aws_instance" "project_1_instance" {
  ami           = var.ami # us-west-2
  instance_type = var.instance_names == "frontend" ? "t3.small" : "t2.micro"
  vpc_security_group_ids = [aws_vpc.project_1_vpc.id]
  subnet_id = var.instance_names[count.index] == "frontend" ? var.public_subnet : var.private_subnet

  tags = {
  Name = var.Name
  }
}
