$logs = Get-Winevent -LogName system -MaxEvents 1000            # logs Windows events
$logs |
    Where-Object { $_.providername -EQ 'service control manager'} |
    Select-Object TimeCreated,LevelDisplayName,Message

$a = 2 | Get-Member
$i = '5'
$i + $i         # 55 since inferred type is string

[int32]$i = 10
$i * 2          # Output: 20

# [datetime]$d = "12/31/2022"
# $d = "foo"      # Will throw an error

# ------------------------------------------
$name = "Jeff"
'Hello, my name is $name'
