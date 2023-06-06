variable "address_family" {
  description = "(Required) The IP protocol assigned to this pool"
  type        = string
  default     = "ipv4"
}

variable "allocation_default_netmask_length" {
  description = "(Optional) A default netmask length for allocations added to this pool"
  type        = number
  default     = 16
}

variable "allocation_max_netmask_length" {
  description = "(Optional) The maximum netmask length that will be required for CIDR allocations in this pool"
  type        = number
  default     = 32
}

variable "allocation_min_netmask_length" {
  description = "(Optional) The minimum netmask length that will be required for CIDR allocations in this pool"
  type        = number
  default     = 8
}

variable "allocation_resource_tags" {
  description = "(Optional) Tags that are required for resources that use CIDRs from this IPAM pool"
  type        = map(string)
  default     = { "Test" = "Allocation" }
}

variable "auto_import" {
  description = "(Optional) If you include this argument, IPAM automatically imports any VPCs you have in your scope that fall within the CIDR range in the pool"
  type        = bool
  default     = false
}

variable "aws_service" {
  description = "(Optional) Limits which AWS service the pool can be used in"
  type        = string
  default     = "ec2"
}

variable "description" {
  description = "(Optional) A description for the IPAM pool"
  type        = string
  default     = "My IPAM Pool"
}

variable "ipam_scope_id" {
  description = "(Required) The ID of the scope in which you would like to create the IPAM pool"
  type        = string
}

variable "locale" {
  description = "(Required) The locale in which you would like to create the IPAM pool"
  type        = string
  default     = "us-east-1"
}

variable "publicly_advertisable" {
  description = "(Optional) Defines whether or not IPv6 pool space is publicly advertisable over the internet"
  type        = bool
  default     = false
}

variable "public_ip_source" {
  description = "(Optional) The IP address source for pools in the public scope"
  type        = string
  default     = "byoip"
}

variable "source_ipam_pool_id" {
  description = "(Optional) The ID of the source IPAM pool"
  type        = string
}

variable "tags" {
  description = "(Optional) A map of tags to assign to the resource"
  type        = map(string)
  default     = { "Test" = "Main" }
}
