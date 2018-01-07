param(
[switch]$enable,
[switch]$disable
)

$subscription = "your-subscription-name"
$resourceGroup = "your-resource-group-name"
$isDisableMode = 0

az account set -s "$subscription"

$list = az resource list --resource-group "$resourceGroup" --resource-type 'Microsoft.Logic/workflows' | ConvertFrom-Json

If($disable)
{
	foreach ($logicApp in $list) {
		$name = $logicApp.name
		echo "Disabling $name"
		az resource invoke-action --action disable  --name "$name" -g "$resourceGroup" --resource-type "Microsoft.Logic/workflows"
	}
}
elseIf($enable)
{
	foreach ($logicApp in $list) {
		$name = $logicApp.name
		echo "Enabling $name"
		az resource invoke-action --action enable  --name "$name" -g "$resourceGroup" --resource-type "Microsoft.Logic/workflows"
	}
}
else
{
	echo "Please specify -enable or -disable switch"
}
exit 0
