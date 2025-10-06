variable "vnet_name" { type = string }
variable "region" { type = string }
variable "resource_group_name" { type = string }
variable "vnet_address_space" { type = list(string) }
variable "subnet_name" { type = string }
variable "subnet_address_prefix" { type = string }
variable "nsg_id" {
  type        = string
  description = "Network Security Group ID to associate with subnet"
}
