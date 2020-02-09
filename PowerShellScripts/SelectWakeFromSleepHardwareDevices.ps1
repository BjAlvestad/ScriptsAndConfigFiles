<#$currentExclusions = Get-MpPreference

$paths = $currentExclusions.ExclusionPath
$processes = $currentExclusions.ExclusionProcess

Write-Host "`nCurrent exclution paths: `n$($currentExclusions.ExclusionPath)"
Write-Host "`nCurrent exclution processes: `n$($currentExclusions.ExclusionProcess)"

Remove-MpPreference -ExclusionPath $currentExclusions.ExclusionPath
Remove-MpPreference -ExclusionProcess $currentExclusions.ExclusionProcess

Write-Host "`nNew exclution paths: `n$($currentExclusions.ExclusionPath)"
Write-Host "`nNew exclution processes: `n$($currentExclusions.ExclusionProcess)"#>

# https://devblogs.microsoft.com/oldnewthing/20080213-00/?p=23473

Write-Host "This script will help to set which devices you want to be able to wake PC from sleep"
Write-Host "NOTE: No changes will be performed automatically `n"

Write-Host "********************************************************************"
Write-Host "****  Devices that can be configured to wake the PC from sleep  ****"
Write-Host "********************************************************************"
powercfg -devicequery wake_from_any

Write-Host "********************************************************"
Write-Host "****  Devices are configured to wake PC from sleep  ****"
Write-Host "********************************************************"
powercfg -devicequery wake_armed

Write-Host "`n--------------------------------------------------------------------------------"
Write-Host "To enable waking from a device, use: `t powercfg -deviceenablewake `"deviceName`""
Write-Host "To disable waking from a device, use: `t powercfg -devicedisablewake `"deviceName`""
Write-Host "To disable all, you can use: `n`t`t powercfg /devicequery wake_armed | ForEach{ powercfg /devicedisablewake $_ }"