provider "aws" {
  region = var.ipam.region_name
}

module "test_scenario" {
  source = "../../" # Path to the root module

  ipam = var.ipam

  pool = {
    address_family                    = var.pool.address_family
    allocation_default_netmask_length = var.pool.allocation_default_netmask_length
    tags                              = var.pool.tags
  }

  pool_cidr = [
    {
      cidr = var.pool_cidr1.cidr
      tags = var.pool_cidr1.tags
    },
    {
      cidr = var.pool_cidr2.cidr
      tags = var.pool_cidr2.tags
    },
  ]
}

data "terraform_remote_state" "prereq" {
  backend = "local"
  config = {
    path = "prereq/terraform.tfstate"
  }
}
