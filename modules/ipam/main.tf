resource "aws_vpc_ipam" "this" {
  description = var.description
  operating_regions {
    region_name = var.region_name
  }
  tags    = var.tags
  cascade = var.cascade
}