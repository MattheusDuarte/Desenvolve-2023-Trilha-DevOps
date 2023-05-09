output "public_ip" {
  value = aws_instance.dev.public_ip
}

output "hostname" {
  value = aws_instance.dev.public_dns
}