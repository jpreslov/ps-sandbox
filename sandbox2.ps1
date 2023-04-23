# Setting and displaying a variable to the console
# $PI = 3.14
# Write-Host "The value of `$PI is $PI"

# Displays local users
# Get-LocalUser

# Logs Windows events
# $logs = Get-Winevent -LogName system -MaxEvents 1000
# $logs | Group-Object LevelDisplayName -NoElement
# $logs | Group-Object ProviderName -NoElement

# $logs | where {$_.providername -EQ 'service control manager'} | Select TimeCreated, LevelDisplayName,Message

$bits = Get-Service BITS
$bits | Select-Object name, StartType
# $bits.StartType

