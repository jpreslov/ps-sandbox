# $a = 5
# $b = Get-Process | Select-Object -First $a
# Write-Host($b) 

# Write-Host(Get-Variable | Out-String -Stream | ForEach-Object { Write-Host $_ })

$logs = Get-Winevent -LogName system -MaxEvents 1000
Write-Host($logs| Out-String -Stream | ForEach-Object { Write-Host $_ })