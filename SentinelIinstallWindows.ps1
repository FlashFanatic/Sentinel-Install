curl SENTINALDOWNLOADLINK -OutFile 'C:\Windows\Temp\SentinelOne.msi'

$token = '@inputsitetoken@'

$argumentlist = 'SITE_TOKEN=' + $token  + ' /NORESTART /QUIET'


Start-Process -FilePath 'C:\Windows\Temp\SentinelOne.msi' -ArgumentList $argumentlist -Wait

for($i = 0; $i -lt 5; $i++) {
$sentinel = Test-Path "HKLM:\\SOFTWARE\Sentinel Labs"

if($sentinel -eq $true)
{

Write-Host 'Sentinel installed successfully'

$i = 6
}

Start-Sleep -Seconds 5


}
