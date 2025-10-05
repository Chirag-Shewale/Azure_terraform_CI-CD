variable "vm_name" { type = string }
variable "vm_size" { type = string }
variable "location" { type = string }
variable "resource_group_name" { type = string }
variable "subnet_id" { type = string }
variable "nsg_id" { type = string }
variable "ssh_username" { type = string }
variable "ssh_public_key_path" { type = string }
variable "create_public_ip" { type = bool }
variable "vm_image_details" {
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
}
