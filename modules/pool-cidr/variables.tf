variable "address_family" {
  description = "The address family for the managed prefix list."
  type        = string
  default     = "IPv4"
}

variable "cidr" {
  description = "(Required) The CIDR you want to assign to the pool"
  type        = string
  default     = false
}

variable "cidr_authorization_context_message" {
  description = "(Optional) The plain-text authorization message for the prefix and account"
  type        = string
}

variable "cidr_authorization_context_signature" {
  description = "(Optional) The signed authorization message for the prefix and account"
  type        = string
}

variable "cidr_filter_pattern" {
  description = "The CIDR pattern to filter the IPAM pool CIDRs."
  type        = string
  default     = "10.*"
}

variable "ipam_pool_id" {
  description = "(Required) The ID of the pool to which you want to assign a CIDR"
  type        = string
}

variable "netmask_length" {
  description = "(Optional) If provided, the cidr provisioned into the specified pool will be the next available cidr given this declared netmask length"
  type        = number
  default     = 16
}

