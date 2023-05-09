hub_rg_variables = {
    "hub_rg" = {
        hub_rg_name     = "prod-connectivity-scent-rg-001"
        hub_rg_location = "South Central US"
    }
}


bastion_variables = {
  "bastion" = {
    location              = "South Central US"
    bastion_vnet_name     = "hub-scent-vnet-001"
    bastion_subnet_name   = "AzureBastionSubnet"
    bastion_publicip_name = "pip-bastion-scent-001"
    bastion_name          = "hub-scent-bas-001"
    subnet_ip             = "10.240.0.128/26"
  }
}




