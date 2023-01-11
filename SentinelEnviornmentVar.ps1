$sentinel = Test-Path "HKLM:\\SOFTWARE\Sentinel Labs"

if($sentinel -eq $true)
{
$version = Get-ChildItem "C:\Program Files\SentinelOne" -Name

$path = "C:\Program Files\SentinelOne\" + $version + "\SentinelAgent.exe"

$path2 = "C:\Program Files\SentinelOne\" + $version + "\SecurityProductInformation.ini"

[Environment]::SetEnvironmentVariable("SentinelOne", $path, "Machine")

[Environment]::SetEnvironmentVariable("SentinelOneini", $path2, "Machine")
}

else
{
exit
}
