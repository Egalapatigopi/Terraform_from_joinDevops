variable "instance_names" {
  default = [db, frontend]
}
variable "instance_type" {
  default = {
    db = "t3.small"
    frontend = "t3.micro"
  }
}