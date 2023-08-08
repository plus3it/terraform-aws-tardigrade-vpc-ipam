variable "description" {
  description = "(Optional) A description for the IPAM Resource Discovery."
  type        = string
  default     = null
}

variable "operating_regions" {
  description = "List of operating regions for IPAM resource discovery."
  type        = list(object({
    region_name = string
    # Include other attributes if needed
  }))
}

variable "tags" {
  description = "(Optional) A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
