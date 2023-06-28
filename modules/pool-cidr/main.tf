resource "aws_vpc_ipam_pool_cidr" "this" {
  cidr = var.cidr
  cidr_authorization_context {
    message   = var.cidr_authorization_context_message
    signature = var.cidr_authorization_context_signature
  }
  ipam_pool_id   = var.ipam_pool_id
  netmask_length = var.netmask_length
}
