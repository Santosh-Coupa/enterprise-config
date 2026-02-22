variable "resource_group" {}
variable "location" {}

variable "vm_name" {}
variable "vm_size" {}
variable "admin_user" {}
variable "ssh_public_key" {}

variable "subnet_id" {}
variable "nsg_id" {}

variable "active_color" {
  type = string
}

variable "environment" {
  type = string
}
