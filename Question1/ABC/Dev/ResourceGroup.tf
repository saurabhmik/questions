resource "azurerm_resource_group" "abc_rg"
{
name = upper{"${var.client_name"}-${var.location}-${environmentType}-RG"}
location = var.location
}