variable "Name" {
    default = "project_1"
}
variable "vpc_cidr" {
  default = "10.0.1.0/24"
}
 variable "ports" {
   default = [{
    port = 22
    protocal = "-1"
    allowed_cidr = ["0.0.0.0/0"]
   }
   ,{
    port = 443
    protocal = "-1"
    allowed_cidr = ["0.0.0.0/0"]
   }
   ,{
    port = 80
    protocal = "-1"
    allowed_cidr = ["0.0.0.0/0"]
   }
   ,{
    port = 8080
    protocal = "-1"
    allowed_cidr = ["0.0.0.0/0"]
   }
   ,{
    port = 3389
    protocal = "-1"
    allowed_cidr = ["0.0.0.0/0"]
   }]
 }