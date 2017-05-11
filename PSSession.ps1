#Preparation: 
# 1.   Execute Enable-PSRemoting -Force on server

# 2.   Execute winrm quickconfig -force
#      Set-Item WSMan:\localhost\Client\TrustedHosts * -Force on clinet before

# Authentication
$user = 'Username'
$cred = Get-Credential -UserName $user
$computerName = 'ComputerName'
$session = New-PSSession -ComputerName $computerName -Credential $cred

# If you want to use password auth without inputting one into console
# But not recommended for security...
$encrypted = ConvertTo-SecureString $pw -AsPlainText -Force
$cread = New-Object System.Management.Automation.PsCredential($user, $encrypted)

# Execute command on server
Invoke-Command -Session $session -ScriptBlock {Get-Service }

# Execute command on server with argument
$process = 'iis'
Invoke-Command -Session $session -ScriptBlock {Get-Process -Name $args[0]} -ArgumentList $process

# To use REPL like ssh-session
# REPL session is open after executing a command below
Enter-PSSession -ComputerName $computerName

# SCP Like commands
$copyTo = 'path\to\copy'
$copyFrom = 'path'

# Fetch a file from server
Copy-Item -Path $copyFrom -FromSession $session -Destination $copyTo

# Send a file into server
Copy-Item -Path $copyFrom -ToSession $session -Destination $copyTo