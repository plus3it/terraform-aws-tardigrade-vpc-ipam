variable "ipam" {
  description = "Object of inputs for IPAM resources"
  type = object({
    description = string
    region_name = string
    tags        = optional(map(string))
    cascade     = optional(bool)
  })
  default  = {}
  nullable = false
}

variable "pool" {
  description = "Object of inputs for Pool resources"
  type = object({
    address_family                    = optional(string)
    allocation_default_netmask_length = optional(number)
    allocation_max_netmask_length     = optional(number)
    allocation_min_netmask_length     = optional(number)
    allocation_resource_tags          = optional(map(string))
    auto_import                       = optional(bool)
    aws_service                       = optional(bool)
    description                       = string
    ipam_scope_id                     = string
    locale                            = optional(string)
    publicly_advertisable             = optional(bool)
    public_ip_source                  = optional(string)
    source_ipam_pool_id               = optional(string)
    tags                              = optional(map(string))
  })
  default  = {}
  nullable = false
}

variable "pool_cidr" {
  description = "Object of inputs for Pool CIDR resources"
  type = object({
    cidr                                 = string
    cidr_authorization_context_message   = optional(string)
    cidr_authorization_context_signature = optional(string)
    ipam_pool_id                         = string
    netmask_length                       = optional(number)
  })
  default  = {}
  nullable = false
}

variable "pool_cidr_allocation" {
  description = "Object of inputs for Pool CIDR Allocation resources"
  type = object({
    cidr             = string
    description      = optional(string)
    disallowed_cidrs = optional(list(string))
    ipam_pool_id     = string
    netmask_length   = optional(number)
  })
  default  = {}
  nullable = false

}

variable "resource_discovery" {
  description = "Object of inputs for Resource Discovery resources"
  type = object({
    description = string
    region_name = string
    tags        = optional(map(string))
  })
  default  = {}
  nullable = false

}

variable "resource_discovery_association" {
  description = "Object of inputs for Resource Discovery Association resources"
  type = object({
    ipam_id                    = string
    ipam_resource_discovery_id = string
    tags                       = optional(map(string))
  })
  default  = {}
  nullable = false

}

variable "preview_next_cidr" {
  description = "Object of inputs for Preview Next CIDR resources"
  type = object({
    disallowed_cidrs = list(string)
    ipam_pool_id     = string
    netmask_length   = number
  })
  default  = {}
  nullable = false

}

variable "scope" {
  description = "Object of inputs for Scope resources"
  type = object({
    ipam_id     = string
    description = string
    tags        = optional(map(string))
  })
  default  = {}
  nullable = false

}
