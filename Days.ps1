# Get the last Windows update installation date
$LastUpdate = (Get-WmiObject -Class Win32_OperatingSystem).LastBootUpTime

# Calculate the number of days since the last update
$DaysSinceLastUpdate = (Get-Date) - $LastUpdate

# Output the number of days since the last update
Write-Output $DaysSinceLastUpdate.Days
