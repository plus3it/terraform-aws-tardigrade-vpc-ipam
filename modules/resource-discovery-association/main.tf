resource "aws_vpc_ipam_resource_discovery_association" "this" {
  ipam_id                    = var.ipam_id
  ipam_resource_discovery_id = var.ipam_resource_discovery_id
  tags                       = var.tags
}