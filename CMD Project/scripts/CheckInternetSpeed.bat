@echo off

echo Testing internet speed...
echo Please wait, this may take a moment.

set "speedtest_cli_path=C:\Users\user\Desktop\CMD Project\speedtest\speedtest.exe"

for /f "delims=" %%i in ('"%speedtest_cli_path%" 2^>nul') do (
    echo %%i
)


timeout /t 3 >nul
