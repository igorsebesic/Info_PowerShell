# PowerShell device info script

# Device Name
$DeviceName = $env:COMPUTERNAME

# Username
$Username = $env:USERNAME

# RAM Memory
$RAM = (Get-CimInstance Win32_PhysicalMemory | Measure-Object Capacity -Sum).Sum
$RAM_GB = [math]::Round($RAM / 1GB, 2)

# HDD Info
$HDD = Get-PhysicalDisk | Select-Object Size, MediaType
$HDD_Info = @()
foreach ($disk in $HDD) {
    $HDD_GB = [math]::Round($disk.Size / 1GB, 2)
    $HDD_Info += "$($HDD_GB) GB, $($disk.MediaType)"
}

# Show result
Write-Host "Device Name: $DeviceName"
Write-Host "Username: $Username"
Write-Host "RAM Memory: $RAM_GB GB"
Write-Host "HDD Info: $($HDD_Info -join '; ')"
