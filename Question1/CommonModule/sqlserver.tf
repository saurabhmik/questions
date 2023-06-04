resource "azurerm_sql_server" "sql_server"
{

	name = "${var.client_name}_${var.location}_${var.environmentType}_sql_server"
    resource_group_name = var.resource_group_name
	resource_group_name = var.resource_group_location
	
}

resource "azurerm_sql_server" "sql_server_failover"
{


}


resource "azurerm_sql_failover_group" "sql_failover_group"
{


partner_servers = azurerm_sql_server.sql_server_failover.id

}

resource "azurerm_sql_database" "sql_db"
{
	name = "${var.client_name}_${var.location}_${var.environmentType}_db"
	elastic_pool_name
}