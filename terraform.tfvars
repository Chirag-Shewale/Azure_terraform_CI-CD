subscription_id            = "6decf8ea-c6e9-4480-b26b-b4e05ef44d03"
environment                = "dev"
region                     = "South India"
vnet_name                  = "blackbox"
vnet_address_space         = ["10.1.0.0/16"]
subnet_name                = "blackbox-subnet"
subnet_address_prefix      = "10.1.1.0/24"
nsg_name                   = "blackbox_nsg"
vm_name                = "example"
vm_size                = "Standard_B1s"
location               = "South India"
resource_group_name   = "tf-backend-rg"
subnet_id             = "<subnet_id_from_vnet_module>"
nsg_id                = "<nsg_id_from_nsg_module>"
ssh_username          = "azureuser"
ssh_public_key_path   = "C:/Users/shewalec/Downloads/project_key.pub"
create_public_ip      = true

vm_image_details = {
  publisher = "Canonical"
  offer     = "UbuntuServer"
  sku       = "18.04-LTS"
  version   = "18.04.202401161"
}


admin_username             = "azureadmin"
backend_resource_group     = "tf-backend-rg"
backend_storage_account    = "tfstateblackbox"
backend_container          = "tfstate"
backend_key                = "terraform.tfstate"
