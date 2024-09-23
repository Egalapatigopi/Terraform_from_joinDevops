locals {
  ami = "ami-005e54dee72cc1d00"
  #here local holding expression unlike variables, variable ca hold key value pairs
  instance_type = var.instance_names == "frontend" ? "t3.small" : "t2.micro"
}