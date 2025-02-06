# This script create a virtual machine from the azure cloud shell

az vm create \
  --resource-group ccf23_webst250 \
  --name test_clivm \
  --image Debian11 \
  --public-ip-sku Standard \
  --admin-username auser \
  --tags 'activity=cli_tutorial' \
  --generate-ssh-keys

# Get the IP address from portal and user name to ssh into the VM
ssh auser@20.29.79.76

# Delete vm
az vm delete -g ccf23_webst250 -n test_clivm
