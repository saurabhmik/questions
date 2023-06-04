//create resource for appgw public ip

//appgw:
resource "azurerm_application_gateway" "app_gw"
{
	name = "${var.client_name}_${var.location}_${var.environmentType}_APPGW"
    resource_group_name = var.resource_group_name
	resource_group_name = var.resource_group_location

//var.listeners is a list of key value pair  (list(map(string)))

dynamic "http_listener"{
	for_each = var.listeners
	content{
	name=
	host_name = 
	protocol = lookup(http_listener.value,"protocol","https")
	
	}

frontendip{}

frontendport{443}

ssl_certificate{
name = "abc.dev.com"
data = filebase64("abc.dev.pfx")
password = "****"
}

trusted_root_certificate{}

dynamic "backend_address_pool"{
	for_each = var.backend_pools
	content{
	name = 
	ip_addresses = lookup(backend_address_pool.value,"ip_addresses",[])
	}
}

probe
{
	host= "abc.dev.com"
	path = "/Web"
    protocol = "https"
	timeout = "20"
	status_code = "200-400"
}

backend_http_settings{
port = "443"
cookie_based_addinity = "Enabled"
affinity_cookie_name = "ApplicationGatewayAffinity"
probe_name = ...
request_timeout = 60
truested_root_certificate_names = ....
}

url_path_map{

path_rule {
   name = "web"
   paths = ["/Web"]
   backend_address_pool_name = ..
   backend_http_settings_name = ..

}


}


}