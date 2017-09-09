# Install Azure Modules
# See https://docs.microsoft.com/en-us/powershell/azure/install-azurerm-ps?view=azurermps-4.2.0

Get-Module PowerShellGet -list | Select-Object Name,Version,Path

Import-Module AzureRM

# If result of a command above does not show up, execute the command below to install modules
Install-Module AzureRM -AllowClobber

# Login to Azure
Login-AzureRmAccount

# Resource Group
Get-AzureRmResourceGroup
New-AzureRmResourceGroup -Name 'ResourceGroupName' -Location 'japaneast'

# Get resource information (e.g. DocumentDB)
Get-AzureRmResource -ResourceType "Microsoft/databaseAccounts" -ResourceGroupName "RGNAME" -Name "DocumentName" 

# Create new virtual machine using Template and parameter json files downloaded from Azure
$ResourceGroupName = 'ResourceName'
$Location = 'japaneast'
$templateFilePath = 'PATH\TO\TEMPLATE'
$parametersFilePath = 'PATH\TO\PARAMETER'

New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroupName `
    -TemplateFile $templateFilePath -TemplateParameterFile $parametersFilePath

# Reset password and disable SSh
# See https://github.com/Azure/azure-linux-extensions/tree/master/VMAccess
$RGName = 'TestResources'
$VmName = 'TestVM'
$Location = 'eastus'

$ExtensionName = 'VMAccessForLinux'
$Publisher = 'Microsoft.OSTCExtensions'
$Version = '1.4'

$PublicConf = '{}'
$PrivateConf = '{
  "username": "testuser",  
  "password": "newpassword",
  "reset_ssh": true
}'

Set-AzureRmVMExtension -ResourceGroupName $RGName -VMName $VmName -Location $Location `
  -Name $ExtensionName -Publisher $Publisher -ExtensionType $ExtensionName `
  -TypeHandlerVersion $Version `
  -Settingstring $PublicConf -ProtectedSettingString $PrivateConf

# Configure network security
# https://docs.microsoft.com/en-us/azure/virtual-machines/windows/nsg-quickstart-powershell