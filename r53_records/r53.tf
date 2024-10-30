resource "aws_route53_record" "terraform" {
  count = length(var.instance_name)
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.terraform[count.index].private_ip]
}