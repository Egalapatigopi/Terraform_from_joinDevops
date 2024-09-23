resource "aws_instance" "project_1_instance" {
  ami           = local.ami# us-west-2
  instance_type = local.instance_type
  vpc_security_group_ids = [aws_vpc.project_1_vpc.id]
}
