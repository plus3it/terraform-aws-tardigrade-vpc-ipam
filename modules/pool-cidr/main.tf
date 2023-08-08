resource "aws_vpc_ipam_pool_cidr" "this" {
  cidr = var.cidr
  cidr_authorization_context {
    message   = var.cidr_authorization_context_message
    signature = var.cidr_authorization_context_signature
  }
  ipam_pool_id   = var.ipam_pool_id
  netmask_length = var.netmask_length
}

data "aws_vpc_ipam_pool_cidrs" "this" {
  ipam_pool_id = var.ipam_pool_id
  filter {
    name   = "cidr"
    values = [var.cidr_filter_pattern]
  }
}

locals {
  mycidrs = [for cidr in data.aws_vpc_ipam_pool_cidrs.this.ipam_pool_cidrs : cidr.cidr if cidr.state == "provisioned"]
}

resource "aws_ec2_managed_prefix_list" "this" {
  name           = "IPAM Pool (${var.ipam_pool_id}) Cidrs"
  address_family = var.address_family
  max_entries    = length(local.mycidrs)

  dynamic "entry" {
    for_each = local.mycidrs
    content {
      cidr        = entry.value
      description = entry.value
    }
  }
}
