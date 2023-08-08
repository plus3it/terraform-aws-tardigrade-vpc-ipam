resource "aws_vpc_ipam_resource_discovery" "this" {
  description = var.description

  dynamic "operating_regions" {
    for_each = var.operating_regions
    content {
      region_name = operating_regions.value.region_name
      # Include other attributes if needed
    }
  }
  tags = var.tags
}
