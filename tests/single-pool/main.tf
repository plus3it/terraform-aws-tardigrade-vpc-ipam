provider "aws" {
  region = var.ipam.region_name
}

module "single-pool" {
  source = "../.."

  ipam = var.ipam

  pool = {
    address_family                    = var.pool.address_family
    allocation_default_netmask_length = var.pool.allocation_default_netmask_length
    tags                              = var.pool.tags
  }

  pool_cidr = {
    cidr = var.pool_cidr.cidr
    tags = var.pool_cidr.tags
  }
}


data "terraform_remote_state" "prereq" {
  backend = "local"
  config = {
    path = "prereq/terraform.tfstate"
  }
}
