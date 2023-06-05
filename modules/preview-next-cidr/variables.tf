variable "disallowed_cidrs" {
  description = "(Optional) Exclude a particular CIDR range from being returned by the pool."
  type        = list(string)
  default     = []
}

variable "ipam_pool_id" {
  description = "(Required) The ID of the pool to which you want to assign a CIDR."
  type        = string
}

variable "netmask_length" {
  description = "(Optional) The netmask length of the CIDR you would like to preview from the IPAM pool."
  type        = number
  default     = 28
}