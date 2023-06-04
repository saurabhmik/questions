resource "azurerm_network_security_rule" "appgw"
{

priority = 100
source_port_range = "*"
destination_port_range = "65200-65535"
source_address_prefix = "*"
destination_address_prefix = "*"
nsg_name = ...nsg_name

}

resource "azurerm_network_security_rule" "appgw"
{

priority = 101
protocol = "Tcp"
source_port_range = "*"
destination_port_range = "443"
source_address_prefix = ["","","",""]//client ips
destination_address_prefix = ....subnetaddressrange
nsg_name = ...nsg_name

}


for jumphost to aks open 1433 port
5985,5986 port for windows operations from an agent to jumpserver