output "public_ip" {
  #value       = aws_instance.terraform.public_ip
  value       = aws_instance.terraform.private_ip
  sensitive   = false
  description = "This is the Public IP of instance created"
}