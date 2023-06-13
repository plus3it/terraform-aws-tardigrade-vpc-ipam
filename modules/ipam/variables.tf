variable "description" {
  description = "(Optional) A description for the IPAM"
  type        = string
  default     = "My IPAM"
}

variable "region_name" {
  description = "(Required) The name of the Region you want to add to the IPAM"
  type        = string
  default     = "us-east-1"
}

variable "tags" {
  description = "(Optional) A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}

variable "cascade" {
  description = "(Optional) Enables you to quickly delete an IPAM, private scopes, pools in private scopes, and any allocations in the pools in private scopes"
  type        = bool
  default     = false
}
