output "instance_ips" {
  value = [for i in aws_instance.os-system : i.public_ip]
}