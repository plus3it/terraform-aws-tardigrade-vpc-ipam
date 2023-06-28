resource "aws_vpc_ipam_preview_next_cidr" "this" {
  disallowed_cidrs = var.disallowed_cidrs
  ipam_pool_id     = var.ipam_pool_id
  netmask_length   = var.netmask_length
}
