# https://www.tenforums.com/tutorials/63070-enable-disable-wake-timers-windows-10-a.html
# To get list of possible values:    powercfg /query

Write-Host "This script will help to configure wake timers (i.e. if PC is allowed to wake up for updates, etc.)"

Write-Host "*************************************************************"
Write-Host "****  Configure waketimers when running on DC (battery)  ****"
Write-Host "*************************************************************"
$userSelectionForBattery = 1 # TODO get user input [0,2], where 0=Disabled, 1=Enabled(default), 2=ImportantWakeTimersOnly
powercfg /SETDCVALUEINDEX SCHEME_CURRENT 238c9fa8-0aad-41ed-83f4-97be242c8f20 bd3b718a-0680-4d9d-8ab2-e1d2b4ac806d $userSelectionForBattery


Write-Host "***************************************************************"
Write-Host "****  Configure waketimers when running on AC (pluged in)  ****"
Write-Host "***************************************************************"
$userSelectionForAC = 1 #TODO get user input [0,2]
powercfg /SETACVALUEINDEX SCHEME_CURRENT 238c9fa8-0aad-41ed-83f4-97be242c8f20 bd3b718a-0680-4d9d-8ab2-e1d2b4ac806d $userSelectionForAC


# From   powercfg /query
# GUID: 238c9fa8-0aad-41ed-83f4-97be242c8f20  (Sleep)
# GUID: bd3b718a-0680-4d9d-8ab2-e1d2b4ac806d  (Allow wake timers)