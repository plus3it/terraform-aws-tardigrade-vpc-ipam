variable "ipam" {
  description = "Object of inputs for IPAM resources"
  type = object({
    description = optional(string)
    region_name = optional(string)
    tags        = optional(map(string))
    cascade     = optional(bool)
  })
  default  = {}
  nullable = false

  validation {
    condition     = try(var.ipam.description, null) != null
    error_message = "`description` is required."
  }

  validation {
    condition     = try(var.ipam.region_name, null) != null
    error_message = "`region_name` is required."
  }
}

variable "pool" {
  description = "Object of inputs for Pool resources"
  type = object({
    address_family                      = optional(string)
    allocation_default_netmask_length   = optional(number)
    allocation_max_netmask_length       = optional(number)
    allocation_min_netmask_length       = optional(number)
    allocation_resource_tags            = optional(map(string))
    auto_import                         = optional(bool)
    aws_service                         = optional(bool)
    description                         = optional(string)
    ipam_scope_id                       = optional(string)
    locale                              = optional(string)
    publicly_advertisable               = optional(bool)
    public_ip_source                    = optional(string)
    source_ipam_pool_id                 = optional(string)
    tags                                = optional(map(string))
  })
  default  = {}
  nullable = false

  validation {
    condition     = try(var.pool.description, null) != null
    error_message = "`description` is required."
  }

  validation {
    condition     = try(var.pool.ipam_scope_id, null) != null
    error_message = "`ipam_scope_id` is required."
  }
}

variable "pool_cidr" {
  description = "Object of inputs for Pool CIDR resources"
  type = object({
    cidr = optional(string)
    cidr_authorization_context_message = optional(string)
    cidr_authorization_context_signature = optional(string)
    ipam_pool_id = optional(string)
    netmask_length = optional(number)
  })
  default  = {}
  nullable = false

  validation {
    condition     = try(var.pool_cidr.cidr, null) != null
    error_message = "`cidr` is required."
  }

  validation {
    condition     = try(var.pool_cidr.ipam_pool_id, null) != null
    error_message = "`ipam_pool_id` is required."
  }
}

variable "pool_cidr_allocation" {
  description = "Object of inputs for Pool CIDR Allocation resources"
  type = object({
    cidr                 = optional(string)
    description          = optional(string)
    disallowed_cidrs     = optional(list(string))
    ipam_pool_id         = optional(string)
    netmask_length       = optional(number)
  })
  default  = {}
  nullable = false

  validation {
    condition     = try(var.pool_cidr_allocation.cidr, null) != null
    error_message = "`cidr` is required."
  }

  validation {
    condition     = try(var.pool_cidr_allocation.ipam_pool_id, null) != null
    error_message = "`ipam_pool_id` is required."
  }
}

variable "resource_discovery" {
  description = "Object of inputs for Resource Discovery resources"
  type = object({
    description = optional(string)
    region_name = optional(string)
    tags        = optional(map(string))
  })
  default  = {}
  nullable = false

  validation {
    condition     = try(var.resource_discovery.description, null) != null
    error_message = "`description` is required."
  }

  validation {
    condition     = try(var.resource_discovery.region_name, null) != null
    error_message = "`region_name` is required."
  }
}

variable "resource_discovery_association" {
  description = "Object of inputs for Resource Discovery Association resources"
  type = object({
    ipam_id = optional(string)
    ipam_resource_discovery_id = optional(string)
    tags = optional(map(string))
  })
  default  = {}
  nullable = false

  validation {
    condition     = try(var.resource_discovery_association.ipam_id, null) != null
    error_message = "`ipam_id` is required."
  }

  validation {
    condition     = try(var.resource_discovery_association.ipam_resource_discovery_id, null) != null
    error_message = "`ipam_resource_discovery_id` is required."
  }
}

variable "preview_next_cidr" {
  description = "Object of inputs for Preview Next CIDR resources"
  type = object({
    disallowed_cidrs = optional(list(string))
    ipam_pool_id     = optional(string)
    netmask_length   = optional(number)
  })
  default  = {}
  nullable = false

  validation {
    condition     = try(var.preview_next_cidr.disallowed_cidrs, null) != null
    error_message = "`disallowed_cidrs` is required."
  }

  validation {
    condition     = try(var.preview_next_cidr.ipam_pool_id, null) != null
    error_message = "`ipam_pool_id` is required."
  }

  validation {
    condition     = try(var.preview_next_cidr.netmask_length, null) != null
    error_message = "`netmask_length` is required."
  }
}

variable "scope" {
  description = "Object of inputs for Scope resources"
  type = object({
    ipam_id     = optional(string)
    description = optional(string)
    tags        = optional(map(string))
  })
  default  = {}
  nullable = false

  validation {
    condition     = try(var.scope.ipam_id, null) != null
    error_message = "`ipam_id` is required."
  }

  validation {
    condition     = try(var.scope.description, null) != null
    error_message = "`description` is required."
  }
}
