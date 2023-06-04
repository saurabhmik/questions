resource "azurerm_storage_account" "storage"
{

	name = "${var.client_name}_${var.location}_${var.environmentType}_storage"
    resource_group_name = var.resource_group_name
	resource_group_name = var.resource_group_location
	
	network_rules{
	default_action = "Deny"
	ip_rules = ",,,"
	virtual_network_subnet_ids = ...subnet_ids
	}
}
