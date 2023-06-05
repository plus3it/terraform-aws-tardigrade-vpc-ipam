output "pool_cidr" {
  description = "Object of attributes for the AWS VPC IPAM Pool CIDR"
  value       = aws_vpc_ipam_pool_cidr.this
}
