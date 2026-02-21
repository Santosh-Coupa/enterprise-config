variable "resource_group" { type = string }
variable "location" { type = string }
variable "nsg_name" {}
variable "security_rules" {
  type = list(any)
}

