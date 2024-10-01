resource "aws_instance" "project_1_instance" {
  for_each = var.instance_type
  ami           = local.ami
  instance_type = each.value
  vpc_security_group_ids = [aws_vpc.project_1_vpc.id]
  tags = {
    name = each.key
  }
}
