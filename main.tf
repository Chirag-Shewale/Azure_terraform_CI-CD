module "vnet" {
  source              = "./modules/vnet"
  vnet_name           = var.vnet_name
  region              = var.region
  resource_group_name = var.backend_resource_group
  vnet_address_space  = var.vnet_address_space
  subnet_name         = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
  nsg_id              = module.nsg.nsg_id
}

module "nsg" {
  source              = "./modules/nsg"
  nsg_name            = var.nsg_name
  region              = var.region
  resource_group_name = var.backend_resource_group
}

module "vm" {
  source               = "./modules/vm"
  vm_name              = var.vm_name
  vm_size              = var.vm_size
  location             = var.region
  resource_group_name = var.backend_resource_group
  subnet_id           = module.vnet.subnet_id
  nsg_id              = module.nsg.nsg_id
  ssh_username        = var.ssh_username
  ssh_public_key_path = var.ssh_public_key_path
  create_public_ip    = var.create_public_ip
  vm_image_details    = var.vm_image_details
}
