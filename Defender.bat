@echo off
setlocal

set "file_path=Bad_IPs.txt"

for /f "tokens=* delims=" %%a in (%file_path%) do (
    netsh advfirewall firewall add rule name="BlockIP on Port 22" dir=in action=block protocol=TCP localport=22 remoteip=%%a
    
)

endlocal
exit /b 0
