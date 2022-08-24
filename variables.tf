# https://www.terraform.io/docs/language/values/variables.html

variable "project_id" {
  type        = string
  description = "Project ID"
}

variable "region" {
  type        = string
  description = "default region for resources"
}

variable "zone" {
  type        = string
  description = "default zone for resources"
}

variable "environment" {
  type = string
}


variable "subscription_id" {
  type = string
}
variable "tenant_id" {
  type = string
}

variable "rg_name" {
  type        = string
  description = "name of the project resourcegroup"
}

variable "location" {
  type = string
}
