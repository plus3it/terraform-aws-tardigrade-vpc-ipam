variable "cidr" {
  description = "(Required) The CIDR you want to assign to the pool"
  type        = string
  default     = "172.2.0.0/24"
}

variable "description" {
  description = "(Optional) The description for the allocation"
  type        = string
  default     = "My IPAM Pool CIDR Allocation"
}

variable "disallowed_cidrs" {
  description = "(Optional) Exclude a particular CIDR range from being returned by the pool"
  type        = list(string)
  default     = []
}

variable "ipam_pool_id" {
  description = "(Required) The ID of the pool to which you want to assign a CIDR"
  type        = string
}

variable "netmask_length" {
  description = "(Optional) The netmask length of the CIDR you would like to allocate to the IPAM pool. Valid Values: 0-128"
  type        = number
  default     = 24
}
