output "public_ip_address" {
  value = length(azurerm_public_ip.main) > 0 ? azurerm_public_ip.main[0].ip_address : null
}

output "private_ip_address" {
  value = azurerm_network_interface.main.private_ip_address
}

output "vm_id" {
  value = azurerm_linux_virtual_machine.example.id
}

