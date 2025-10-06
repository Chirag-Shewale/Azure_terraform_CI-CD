resource "azurerm_virtual_network" "this" {
  name                 = var.vnet_name
  location             = var.region
  resource_group_name  = var.resource_group_name
  address_space        = var.vnet_address_space
}

resource "azurerm_subnet" "this" {
  name                  = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = [var.subnet_address_prefix]
}

resource "azurerm_subnet_network_security_group_association" "this" {
  subnet_id                 = azurerm_subnet.this.id
  network_security_group_id = var.nsg_id
}

output "vnet_id" {
  value = azurerm_virtual_network.this.id
}

output "subnet_id" {
  value = azurerm_subnet.this.id
}
