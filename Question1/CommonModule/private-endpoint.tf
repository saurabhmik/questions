resource "azurerm_private_endpoint" "aks_private_endpoint"
{	
	name = "${var.client_name}_${var.location}_${var.environmentType}_aks_pvt_endpoint"
    resource_group_name = var.resource_group_name
	resource_group_name = var.resource_group_location
    depends_on             =  [azurerm_private_dns_zone.aks_dns_zone]
	
	
	private_service_connection{
	name = aks_pvt_connection
	private_connection_resource_id = 
	
	}

}

resource "azurerm_private_dns_zone" "aks_dns_zone"
{
	name = "${var.client_name}_${var.location}_${var.environmentType}_aks_dns"
	
    resource_group_name = var.resource_group_name
	resource_group_name = var.resource_group_location
}

resource "azurerm_private_dns_zone_virtual_network_link" "dns_vlink"
{

    resource_group_name = var.resource_group_name
	resource_group_name = var.resource_group_location
	VnetID...
}

resource "azurerm_private_dns_a_record" "dns_arecord"
{

}