resource "azurerm_kubernetes_cluster" "akscluster"
{
	name = "${var.client_name}_${var.location}_${var.environmentType}_aks"
    resource_group_name = var.resource_group_name
	resource_group_name = var.resource_group_location
	
	
	default_node_pool{
	name=
	subnet_id =
	vm_size =
	node_count =
	min_count =
	max_count  =
	enable_autoscaling =
	max_pods =
	
	
	
	
	}

}

resource "azurerm_kubernetes_cluster_node_pool" "windows_nodes"
{

os_type = "windows"

}