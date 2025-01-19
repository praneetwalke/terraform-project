# Outputs for Easy Access
output "load_balancer_dns" {
  value       = aws_lb.nginx_elb.dns_name
  description = "DNS name of the Load Balancer"
}

output "vpc_id" {
  value       = aws_vpc.my_vpc.id
  description = "VPC ID"
}
