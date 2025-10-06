variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}

variable "environment" {
  type        = string
  description = "Deployment environment"
}

variable "region" {
  type        = string
  description = "Azure region to deploy resources in"
}

variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "Address space for the virtual network"
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}

variable "subnet_address_prefix" {
  type        = string
  description = "Address prefix for the subnet"
}

variable "nsg_name" {
  type        = string
  description = "Name of the Network Security Group"
}

variable "vm_name" {
  type        = string
  description = "Name of the Virtual Machine"
}

variable "vm_size" {
  type        = string
  description = "Size of the Virtual Machine"
}

variable "location" {
  type        = string
  description = "Region where resources will be created"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Azure Resource Group"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID for VM deployment"
}

variable "nsg_id" {
  type        = string
  description = "Network Security Group ID"
}

variable "ssh_username" {
  type        = string
  description = "SSH username for VM"
}

variable "ssh_public_key_path" {
  type        = string
  description = "Path to SSH public key file"
}

variable "create_public_ip" {
  type        = bool
  default     = false
  description = "Whether to create a public IP for the VM"
}

variable "vm_image_details" {
  description = "VM image details for all Linux VMs."
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
  default = {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }
}

variable "admin_username" {
  type        = string
  description = "Admin username for the VM"
}

variable "backend_resource_group" {
  type        = string
  description = "Resource group for Terraform backend state"
}

variable "backend_storage_account" {
  type        = string
  description = "Storage account name for Terraform backend"
}

variable "backend_container" {
  type        = string
  description = "Blob container name for Terraform backend state"
}

variable "backend_key" {
  type        = string
  description = "Key (filename) for Terraform state file"
}
