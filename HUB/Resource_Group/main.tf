resource "azurerm_resource_group" "hub_rg" {
    for_each = var.hub_rg_variables
    name     = each.value["hub_rg_name"]
    location = each.value["hub_rg_location"]
}