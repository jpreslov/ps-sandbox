
$username = Read-Host "Enter the username you want to check and delete."


$exists = Get-LocalUser -Name $username -ErrorAction SilentlyContinue
if ($exists) {
    Remove-LocalUser -Name $username
    Write-Host "User '$username' has been deleted."
}
else {
    Write-Host "User '$username' does not exist on this computer."
}

Read-Host -Prompt "Press Enter to exit"