variable "cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "The IPv4 CIDR block for the VPC"
}

variable "vpc_name" {
  type        = string
  default     = "main"
  description = "A map of tags assigned to the vpc"
}


variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "enable_dns_support" {
  type    = bool
  default = true
}

variable "environment" {
  type    = string
  default = "development"
}