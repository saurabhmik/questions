az login
az account set --subscription "abc"
az vm  show -g "RG Name" -n "Vm Name"  #entire Instance data already in JSON format
az vm  show -g "RG Name" -n "Vm Name" --query '[name,resources]' #query for specific configuration-->shows extensions installed
or 
az vm extension list --resource-group "RG Name" --vm-name "Vm Name"

