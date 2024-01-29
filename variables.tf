variable "resource_group" {
  type = object({
    name = string
  })
}

variable "name" {
  type = string
  validation {
    condition     = length(var.name) >= 3 && length(var.name) <= 22
    error_message = "The Azure KV name parameter must have more than 3 characters and less then 22."
  }
}

variable "location" {
  type = object({
    name = string
    alias = string
  })
}

variable "enabled_for_disk_encryption" {
  type = bool
  default  = true
}

variable "soft_delete_retention_days" {
  type = number
  default  = 7
}

variable "purge_protection_enabled" {
  type = bool
  default = true
}

variable "sku_name" {
  type = string
  default = "standard"
}

variable "tags" {
  type = map(string)
}