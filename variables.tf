variable "hub_rg_variables" {
    type = map(object({
        hub_rg_name      = string
        hub_rg_location  = string
    }
  ))
  default = {}
}


variable "bastion_variables" {
  type = map(object({
    location              = string
    resource_group_name   = string
    bastion_vnet_name     = string
    bastion_subnet_name   = string
    bastion_publicip_name = string
    bastion_name          = string
    subnet_ip             = string
    }
  ))
  default = {}
}



