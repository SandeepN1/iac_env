variable "project" {
  description = "Project identifier used in the resource group name."
  type        = string
  default     = "iac"
}

variable "service" {
  description = "Service identifier used in the resource group name."
  type        = string
  default     = "env"
}

variable "environment" {
  description = "Environment identifier used in the resource group name and tags."
  type        = string
  default     = "dev"
}

variable "region" {
  description = "Short region identifier used in the resource group name."
  type        = string
  default     = "eus"
}

variable "sequence" {
  description = "Sequence number used in the resource group name."
  type        = string
  default     = "001"
}

variable "location" {
  description = "Azure region where the resource group will be created."
  type        = string
  default     = "East US"
}

variable "business_unit" {
  description = "Business unit tag value."
  type        = string
  default     = "platform"
}

variable "owner" {
  description = "Owner tag value."
  type        = string
  default     = "platform-team"
}

variable "technical_contact" {
  description = "Technical contact tag value."
  type        = string
  default     = "platform-team@example.com"
}

variable "op_co" {
  description = "Operating company tag value."
  type        = string
  default     = "shared"
}

variable "description" {
  description = "Description tag value."
  type        = string
  default     = "Managed by GitHub Actions and Terraform"
}
