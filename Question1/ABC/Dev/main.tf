module abc_dev
{
	source                          = "../../CommonModule"
	resource_group_name             = azurerm_resource_group.abc_rg.name
	resource_group_locaftion		= azurerm_resource_group.abc_rg.location
	environmentType                 = var.environmentType
	clientName						= var.client_name

}