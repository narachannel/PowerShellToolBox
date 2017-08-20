# Install SqlServer Modules
Install-module -Name SqlServer -Scope CurrentUser

# Import the SQL Server Module.    
Import-Module SqlServer -DisableNameChecking

# To check whether the module is installed.
Get-Module -ListAvailable -Name SqlServer

# Get database list from localhost
Get-SqlDatabase -ServerInstance "(localdb)\MSSQLLocalDB"

# Backup database
$serverName = "(localdb)\MSSQLLocalDB"
Backup-SqlDatabase -ServerInstance $serverName -Database 'Trading' -BackupFile '.\Development\sqlserver\trade.bak'

# Restore database
Restore-SqlDatabase -ServerInstance $serverName -BackupFile '.\Downloads\WideWorldImporters-Full.bak' `
                    -DatabaseFile '.\Development\sqlserver\wwi.mdf' -Database 'wwifull'

