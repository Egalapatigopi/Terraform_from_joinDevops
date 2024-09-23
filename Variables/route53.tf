resource "aws_route53_record" "project_1" {
  zone_id = "something_host_zone_id"
  name    = var.instance_names[count.index] == "frontend" ? var.public_domain : null
  type    = "A"
  ttl     = 1
  records = var.instance_names[count.index] == "frontend" ? aws_instance.project_1_instance[count.index].public_ip: null
}