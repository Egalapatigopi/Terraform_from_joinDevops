resource "aws_security_group" "project_1" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic 22, 80, 443, 3389, 8080 and all outbound traffic"
  vpc_id      = aws_vpc.project_1_vpc.id

  dynamic "ingress" {
    for_each = var.ports
    content {
      from_port        = ingress.value["port"]
      to_port          = ingress.value["port"]
      protocol         = ingress.value["protocal"]
      cidr_blocks      = ingress.value["allowed_cidr"]
    }
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.Name
  }
}