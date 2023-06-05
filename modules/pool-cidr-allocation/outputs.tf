output "pool_cidr_allocation" {
  description = "Object of attributes for the AWS VPC IPAM Pool CIDR Allocation"
  value       = aws_vpc_ipam_pool_cidr_allocation.this
}
