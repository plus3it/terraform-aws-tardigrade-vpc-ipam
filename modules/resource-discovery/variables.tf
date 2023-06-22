variable "description" {
  description = "(Optional) A description for the IPAM Resource Discovery."
  type        = string
  default     = null
}

variable "region_name" {
  description = "(Required) The name of the Region you want to add to the IPAM."
  type        = string
  default     = "us-east-1"
}

variable "tags" {
  description = "(Optional) A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
