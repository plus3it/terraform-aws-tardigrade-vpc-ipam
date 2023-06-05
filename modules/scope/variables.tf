variable "ipam_id" {
  description = "(Required) The ID of the IPAM for which you're creating this scope."
  type        = string
}

variable "description" {
  description = "(Optional) A description for the scope you're creating."
  type        = string
  default     = "My IPAM Scope"
}

variable "tags" {
  description = "(Optional) Key-value mapping of resource tags."
  type        = map(string)
  default     = { "Name" = "test" }
}