//existing resources of the cloud, like networking details


data "azurerm_client_config" "current"  {}

// to read output variables of other workspaces

data "terraform_remote_state" "some_other_workspace"{
backend "remtote"

config = {
  hostname = "test.server.local"
  organization = "abc"
  
  workspaces {
  name = abc-dev-network
  }  
}