resource "aws_vpc_ipam_resource_discovery" "this" {
  description = var.description
  operating_regions {
    region_name = var.region_name
  }
  tags = var.tags
}
