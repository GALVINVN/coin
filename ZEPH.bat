powershell.exe Invoke-WebRequest -Uri "https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/ZEPHSETUP.ps1" -OutFile "C:\ZEPHSETUP.ps1"
powershell.exe -ExecutionPolicy Bypass -File "C:\configure_system.ps1"
