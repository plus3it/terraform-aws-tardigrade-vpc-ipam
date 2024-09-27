resource "aws_vpc_ipam" "this" {
  count = var.vpc_ipam.ipam != null ? 1 : 0

  description = var.vpc_ipam.ipam.description
  cascade     = var.vpc_ipam.ipam.cascade

  dynamic "operating_regions" {
    for_each = var.vpc_ipam.ipam.operating_regions
    content {
      region_name = operating_regions.value.region_name
    }
  }

  tags = merge(
    var.vpc_ipam.ipam.name != null ? { Name = var.vpc_ipam.ipam.name } : {},
    var.vpc_ipam.ipam.tags,
  )
}

resource "aws_vpc_ipam_pool" "this" {
  for_each = { for pool in var.vpc_ipam.pools : pool.name => pool }

  address_family                    = try(lower(each.value.address_family), null)
  allocation_default_netmask_length = each.value.allocation_default_netmask_length
  allocation_max_netmask_length     = each.value.allocation_max_netmask_length
  allocation_min_netmask_length     = each.value.allocation_min_netmask_length
  allocation_resource_tags          = each.value.allocation_resource_tags
  auto_import                       = each.value.auto_import
  aws_service                       = try(lower(each.value.aws_service), null)
  description                       = each.value.description
  locale                            = try(lower(each.value.locale), null)
  publicly_advertisable             = each.value.publicly_advertisable
  public_ip_source                  = each.value.public_ip_source
  source_ipam_pool_id               = each.value.source_ipam_pool_id

  ipam_scope_id = (
    each.value.ipam_scope_name == "private_default_scope" ? aws_vpc_ipam.this[0].private_default_scope_id : (
      each.value.ipam_scope_name == "public_default_scope" ? aws_vpc_ipam.this[0].public_default_scope_id : (
        each.value.ipam_scope_name != null ? aws_vpc_ipam_scope.this[each.value.ipam_scope_name].id : (
    each.value.ipam_scope_id)))
  )

  tags = merge(
    {
      Name = each.value.name
    },
    each.value.tags,
  )

  lifecycle {
    precondition {
      condition     = !(each.value.ipam_scope_name != null && each.value.ipam_scope_id != null)
      error_message = "Cannot set both 'ipam_scope_name' and 'ipam_scope_id'"
    }
  }
}

resource "aws_vpc_ipam_pool_cidr" "this" {
  for_each = { for cidr in var.vpc_ipam.pool_cidrs : cidr.name => cidr }

  cidr           = each.value.cidr
  netmask_length = each.value.netmask_length
  ipam_pool_id   = each.value.ipam_pool_name != null ? aws_vpc_ipam_pool.this[each.value.ipam_pool_name].id : each.value.ipam_pool_id

  dynamic "cidr_authorization_context" {
    for_each = each.value.cidr_authorization_context != null ? [1] : []

    content {
      message   = each.value.cidr_authorization_context_message
      signature = each.value.cidr_authorization_context_signature
    }
  }

  lifecycle {
    precondition {
      condition     = !(each.value.cidr != null && each.value.netmask_length != null)
      error_message = "Cannot set both 'cidr' and 'netmask_length'."
    }

    precondition {
      condition     = !(each.value.ipam_pool_name != null && each.value.ipam_pool_id != null)
      error_message = "Cannot set both 'ipam_pool_name' and 'ipam_pool_id'."
    }
  }
}

resource "aws_vpc_ipam_pool_cidr_allocation" "this" {
  for_each = { for allocation in var.vpc_ipam.pool_cidr_allocations : allocation.cidr => allocation }

  cidr             = each.value.cidr
  description      = each.value.description
  disallowed_cidrs = each.value.disallowed_cidrs
  ipam_pool_id     = each.value.ipam_pool_id
  netmask_length   = each.value.netmask_length
}

# unsure of implementation usage? could be useful for checking/assigning next CIDR (dynamically)?
resource "aws_vpc_ipam_preview_next_cidr" "this" {
  count = var.vpc_ipam.preview_next_cidr != null ? 1 : 0

  disallowed_cidrs = var.vpc_ipam.preview_next_cidr.disallowed_cidrs
  ipam_pool_id     = var.vpc_ipam.preview_next_cidr.ipam_pool_id
  netmask_length   = var.vpc_ipam.preview_next_cidr.netmask_length
}

resource "aws_vpc_ipam_scope" "this" {
  for_each = { for scope in var.vpc_ipam.scopes : scope.name => scope }

  ipam_id     = aws_vpc_ipam.this[0].id
  description = each.value.description

  tags = merge(
    {
      Name = each.value.name
    },
    each.value.tags,
  )

  lifecycle {
    precondition {
      condition     = var.vpc_ipam.ipam != null
      error_message = "You can't create a scope without creating an IPAM"
    }
  }
}
