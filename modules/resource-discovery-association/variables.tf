variable "ipam_id" {
  description = "(Required) The ID of the IPAM to associate."
  type        = string
}

variable "ipam_resource_discovery_id" {
  description = "(Required) The ID of the Resource Discovery to associate."
  type        = string
}

variable "tags" {
  description = "(Optional) A map of tags to add to the IPAM resource discovery association resource."
  type        = map(string)
  default     = { "Name" = "test" }
}