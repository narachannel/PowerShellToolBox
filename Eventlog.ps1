# Get latest 100 events from Docker service on Application log
Get-EventLog -LogName Application -Newest 100 -Source DockerService

# Create eventlog entry
$eventSource = 'PowerShellToolbox'
New-EventLog -LogName Application -Source $eventSource
Write-EventLog -LogName Application -Source $eventSource `
                -Message 'Hello from PowerShell!' -EntryType Information `
                -EventId 1

