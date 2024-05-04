# --- Prompt to the user asking them to enter a username --- #
# --- creates variable called udisable --- #
$udisable = Read-Host "Please enter the username:"

# --- Verify whether the user exists in AD, handles errors if they do not exist --- #
# --- creates variable user; get AD user and pass through this variable; assigns null value if they do not exist --- #
$User = $(try{get-aduser $udisable} catch {$null})

# --- If no error/user exists, disable AD account --- #

if ($User -ne $null) {
    Disable-ADAccount -Identity $udisable
    Get-ADUser -Identity $udisable | Select-Object SamAccountName, Enabled

} Else {
    Write-Host "User does not exist"
    exit
}