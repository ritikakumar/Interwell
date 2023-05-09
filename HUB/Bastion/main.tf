
resource "azurerm_subnet" "bastion_subnet" {
  for_each             = var.bastion_variables
  name                 = each.value["bastion_subnet_name"] //"AzureBastionSubnet"
  resource_group_name  = each.value["bastion_rg_name"]
  virtual_network_name = each.value["bastion_vnet_name"] //"hub-scent-vnet-001"
  address_prefixes     = each.value["subnet_ip"] 
}

resource "azurerm_public_ip" "bastion_Public_IP" {
  for_each            = var.bastion_variables
  name                = each.value["bastion_publicip_name"] //"pip-bastion-scent-001"
  location            = each.value["bastion_location"] //"South Central US"
  resource_group_name = each.value["bastion_rg_name"] //"prod-connectivity-scent-rg-001"
  allocation_method   = "Static" //
  sku                 = "Standard" //
}

resource "azurerm_bastion_host" "bastion" {
  for_each            = var.bastion_variables
  name                = each.value["bastion_name"] //"hub-scent-bas-001"
  location            = each.value["bastion_location"]
  resource_group_name = each.value["resource_group_name"]

  # ip_configuration {
  #   name                 = "configuration"
  #   subnet_id            = azurerm_subnet.example.id
  #   public_ip_address_id = azurerm_public_ip.example.id
  # }
}