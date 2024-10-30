output "public_ip" {
  #value       = aws_instance.terraform.public_ip
  value       = aws_instance.terraform.private_ip   # this is for IP address output only, if we want other as per documentation we need to call
  sensitive   = false
  description = "This is the Public IP of instance created"
}