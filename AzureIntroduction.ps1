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
