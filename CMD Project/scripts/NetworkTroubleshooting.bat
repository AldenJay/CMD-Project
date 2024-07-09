@echo off

echo Performing network troubleshooting...


netsh interface ip reset


ipconfig /release
ipconfig /renew


netsh winsock reset

echo.
echo Network troubleshooting completed.
pause
