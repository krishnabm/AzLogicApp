 # AzLogicApp
Small script to enable/disable Azure logic apps within a resource group.

## Prerequisites
* Azure CLI. Get it [here](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
* Log in - `az login`

## Usage
1. Change the `$subscription` and `$resourceGroup` vars in the script to your subscription name and resource group
2. Run the script -

  `<path>\LogicAppMgt.ps1 -disable`
  OR
  `<path>\LogicAppMgt.ps1 -enable`

