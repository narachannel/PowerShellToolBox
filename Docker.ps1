#Switch Linux Container to Windows Container (or Vise-versa)
#& $Env:ProgramFiles\Docker\Docker\DockerCli.exe -SwitchDaemon

docker ps -a

docker images

#Windows Container Hello world
#https://docs.microsoft.com/en-us/virtualization/windowscontainers/quick-start/quick-start-windows-10
docker pull microsoft/nanoserver

docker run -it microsoft/nanoserver cmd

powershell.exe Add-Content C:\helloworld.ps1 'Write-Host "Hello World"'