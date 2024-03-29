output "ipam" {
  description = "Object of all AWS VPC IPAM"
  value       = one(aws_vpc_ipam.this[*])
}

output "pools" {
  description = "Map of VPC IPAM Pool Objects"
  value       = aws_vpc_ipam_pool.this
}

output "scopes" {
  description = "Map of VPC IPAM Scope objects"
  value       = aws_vpc_ipam_scope.this
}

output "pool_cidr" {
  description = "Map of VPC IPAM Pool Cidrs objects"
  value       = aws_vpc_ipam_pool_cidr.this
}
