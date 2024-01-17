variable "name" {
  type        = string
  description = "(Required) Name of the repository. {name}/{environment}."
}

variable "environment" {
  type        = string
  description = "(Optional) Repository environment. {name}/{environment}. Default is dev."
  default     = "dev"
  validation {
    condition     = can(regex("^(global|prod|preprod|dev|sandbox)$", var.environment))
    error_message = "The environment must be global or prod or preprod or dev or sandbox."
  }
}

variable "force_delete" {
  type        = bool
  description = "(Optional) If true, will delete the repository even if it contains images. Defaults to false."
  default     = false
}

variable "image_tag_mutability" {
  type        = string
  description = "(Optional) The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE. Defaults to MUTABLE"
  default     = "MUTABLE"
}

variable "scan_on_push" {
  type        = bool
  description = "(Required) Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false)."
  default     = true
}

variable "additional_tags" {
  type        = map(string)
  description = "(Optional) A map of tags to assign to the resource."
  default     = {}
}


variable "expiration_after_days" {
  type        = number
  description = "(Optional) Delete images older than X days."
  default     = 0
}
