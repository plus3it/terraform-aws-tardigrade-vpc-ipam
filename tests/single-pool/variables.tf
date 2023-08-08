variable "ipam" {
  description = "Object of inputs for IPAM resources"
  type = object({
    region_name = string
    cascade     = bool
  })

  default = {
    region_name = "us-east-1"
    cascade     = true
  }
}

variable "pool" {
  description = "Object of inputs for Pool resources"
  type = object({
    address_family                    = string
    allocation_default_netmask_length = number
    tags                              = map(string)
  })

  default = {
    address_family                    = "IPv4"
    allocation_default_netmask_length = 24
    tags                              = { "Environment" = "Test" }
  }
}

variable "pool_cidr" {
  description = "Object of inputs for Pool CIDR resources"
  type = object({
    cidr = string
    tags = map(string)
  })

  default = {
    cidr = "10.0.0.0/24"
    tags = { "Network" = "CIDR" }
  }
}
