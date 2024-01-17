variable "region" {
  type        = string
  description = "(Required) Region of AWS account"
}

variable "profile" {
  type        = string
  description = "(Required) Name of the AWS profile"
}

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

variable "project" {
  type        = string
  description = "(Optional) Name of the project."
}

variable "owner" {
  type        = string
  description = "(Optional) Name of the owner."
}
