# Invoke-WebRequest
# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/invoke-webrequest?view=powershell-5.1
$result = Invoke-WebRequest -URI http://www.bing.com?q=how+many+feet+in+a+mile
$result.AllElements | ? {$_.innerhtml -like "*There are*"} |
Sort { $_.InnerHtml.Length } |
Select InnerText -First 5

# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/invoke-restmethod?view=powershell-5.1
#Invoke-RestMethod
Invoke-RestMethod -Uri https://blogs.msdn.microsoft.com/powershell/feed/ |
Format-Table -Property Title, pubDate

# Send Request with Json body to API
$body = @{UserId = 1 
            Amount = 1500.00 
            IsAsk = $false 
            OrderedAt = "2017-09-09T20:24:17.803"}
$json = ConvertTo-Json $body
$url = 'http://testsite.com/api/orders'
$response = Invoke-RestMethod $url -Method POST -Body $json -ContentType 'application/json'
$response
