function Invoke-MSBuild ([string]$MSBuildPath, [string]$MSBuildParameters) {
    Invoke-Expression "$MSBuildPath $MSBuildParameters"
}


$msBuild = 'C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin\'
$buildParam = '.\ConsoleRandomAnswerGenerator.csproj /p:OutputPath=.\publish /p:Configuration=Release'

Invoke-MSBuild -MSBuildPath $msBuild + "MSBuild.exe" -MSBuildParameters $buildParam