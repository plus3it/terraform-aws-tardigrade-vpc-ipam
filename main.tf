module "ipam" {
  source  = "./modules/ipam"
  tags    = var.ipam.tags
  cascade = var.ipam.cascade
}

module "vpc_ipam_pool" {
  source                            = "./modules/pool"
  address_family                    = var.pool.address_family
  allocation_default_netmask_length = var.pool.allocation_default_netmask_length
  allocation_max_netmask_length     = var.pool.allocation_max_netmask_length
  allocation_min_netmask_length     = var.pool.allocation_min_netmask_length
  allocation_resource_tags          = var.pool.allocation_resource_tags
  auto_import                       = var.pool.auto_import
  aws_service                       = var.pool.aws_service
  ipam_scope_id                     = var.pool.ipam_scope_id
  locale                            = var.pool.locale
  publicly_advertisable             = var.pool.publicly_advertisable
  public_ip_source                  = var.pool.public_ip_source
  source_ipam_pool_id               = var.pool.source_ipam_pool_id
  tags                              = var.pool.tags
}

module "vpc_ipam_pool_cidr" {
  source                               = "./modules/pool-cidr"
  cidr                                 = var.pool_cidr.cidr
  cidr_authorization_context_message   = var.pool_cidr.cidr_authorization_context_message
  cidr_authorization_context_signature = var.pool_cidr.cidr_authorization_context_signature
  ipam_pool_id                         = var.pool_cidr.ipam_pool_id
  netmask_length                       = var.pool_cidr.netmask_length
  cidr_filter_pattern                  = "10.*" # Optional, can be customized
  address_family                       = "IPv4" # Optional, can be customized
}


module "vpc_ipam_pool_cidr_allocation" {
  source           = "./modules/pool-cidr-allocation"
  cidr             = var.pool_cidr_allocation.cidr
  disallowed_cidrs = var.pool_cidr_allocation.disallowed_cidrs
  ipam_pool_id     = var.pool_cidr_allocation.ipam_pool_id
  netmask_length   = var.pool_cidr_allocation.netmask_length
}

module "vpc_ipam_resource_discovery" {
  source      = "./modules/resource-discovery"
  description = "Resource Discovery Description"
  operating_regions = [
    { region_name = "us-east-1" },
    { region_name = "us-west-2" }
    # Add more regions as needed
  ]
  tags = var.resource_discovery.tags
}

module "vpc_ipam_resource_discovery_association" {
  source                     = "./modules/resource-discovery-association"
  ipam_id                    = var.resource_discovery_association.ipam_id
  ipam_resource_discovery_id = var.resource_discovery_association.ipam_resource_discovery_id
  tags                       = var.resource_discovery_association.tags
}

module "vpc_ipam_preview_next_cidr" {
  source           = "./modules/preview-next-cidr"
  disallowed_cidrs = var.preview_next_cidr.disallowed_cidrs
  ipam_pool_id     = var.preview_next_cidr.ipam_pool_id
  netmask_length   = var.preview_next_cidr.netmask_length
}

module "vpc_ipam_scope" {
  source  = "./modules/scope"
  ipam_id = var.scope.ipam_id
  tags    = var.scope.tags
}
