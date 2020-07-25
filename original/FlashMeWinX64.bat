@echo off
@set BIOS.ROM=PA70Hx.16
@set BIOS.ROM2=PA70Hx.16

:: Flash ME
fptW64 -f %BIOS.ROM% -l 2097152 -y
if errorlevel 1 goto End

AFUwinx64.exe %BIOS.ROM2% /p /b /n /l /shutdown


