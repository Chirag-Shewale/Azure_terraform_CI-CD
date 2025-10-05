

output "vm_id" {
  value = module.vm.vm_id
}

output "vm_public_ip" {
  value       = module.vm.public_ip_address
  description = "Public IP address of the VM"
}
