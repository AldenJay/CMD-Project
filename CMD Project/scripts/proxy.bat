@echo off
echo Troubleshooting Network Settings

:menu
echo 1. Add Proxy
echo 2. Remove Proxy
echo 3. Exit

set /p choice=Enter your choice (1-3): 

if "%choice%"=="1" goto addProxy
if "%choice%"=="2" goto removeProxy
if "%choice%"=="3" call "C:\Users\user\Desktop\CMD Project\CMD-COMMAND LIST.bat"

:addProxy
set /p proxyAddress=Enter proxy address: 
set /p proxyPort=Enter proxy port: 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d "%proxyAddress%:%proxyPort%" /f
echo Proxy added successfully.
goto menu

:removeProxy
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /f
echo Proxy removed successfully.
goto menu



:end