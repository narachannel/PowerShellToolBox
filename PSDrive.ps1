#PSDrive

#Get list of PS Drives (File systems and registry, etc.)
Get-PSDrive

#Mount a local directry as T drive like net use
$drive = New-PSDrive -PSProvider FileSystem -Name 'T' -Root '\\machinename\Users\deton\Development' -Persist

Remove-PSDrive $drive