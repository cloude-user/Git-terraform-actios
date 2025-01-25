# variables.tf
variable "account_id" {
  description = "The AWS account ID"
  type        = string
  default ="692859915147"
}

variable "region" {
  description = "AWS region for resources"
  type        = string
  default     = "us-east-2"
}
