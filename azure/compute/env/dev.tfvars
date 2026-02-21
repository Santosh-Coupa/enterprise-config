resource_group = "rg-dev"
location       = "centralindia"

vm_name        = "dev-app"
vm_size        = "Standard_B2ts_v2"
admin_user     = "azureuser"
ssh_public_key = "ssh-ed25519 AAAA..."

subnet_id = "subnet-id-from-network-state"
nsg_id    = "nsg-id-from-security-state"

active_color = "blue"