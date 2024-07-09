@echo off
color 0a
echo.
:loop
echo PROGRAMMED BY Alden Jay Golbin
echo ------------------------------
echo List of commands
echo 1. Check Wifi Password
echo 2. Ping IP
echo 3. Tracert
echo 4. ipconfig
echo 5. ipconfig /all
echo 6. Get System Information
echo 7. View Active Network Connections
echo 8. Flush DNS Cache
echo 9. Check Internet Speed
echo 10. Network Troubleshooting
echo 11. Check Disk
echo 12. System File Checker
echo 13. Task List
echo 14. Add/Remove Proxy
echo 15. Check Disk
echo 16. Check Firewall Settings
echo 17. View Installed Programs
echo 18. Check System Event Logs
echo 19. Check Disk Space
echo 20. System Restore
echo Type "cls" to clear screen
echo Type "exit" to quit
echo.
echo.
echo If problems persists, try using YouTube, Google or chatGPT. 
echo Otherwise, contact your system administrator for further assistance.
echo.
set /p select=Select a command:
echo.

IF "%select%"=="1" (
    set /p wifi=Input the Wi-Fi name: 
    netsh wlan show profile %wifi% key=clear | findstr "Key Content"
    echo.
    echo Press enter to return to the command list
    echo.
    pause >nul
    cls
) ELSE IF "%select%"=="2" (
    set /p ip=Input IP/Link to ping:
    ping "%ip%"
    echo.
    echo Press enter to return to command list
    echo.
    pause >nul
    cls
) ELSE IF "%select%"=="3" (
    set /p tracert=Tracert:
    tracert "%tracert%"
    echo.
    echo Press enter to return to command list
    echo.
    pause >nul
    cls

) ELSE IF "%select%"=="4" (
    ipconfig
    echo.
    echo Press enter to return to command list
    echo.
    pause >nul
    cls

) ELSE IF "%select%"=="5" (
    ipconfig /all
    echo.
    echo Press enter to return to command list
    echo.
    pause >nul
    cls

) ELSE IF "%select%"=="6" (
    systeminfo
    echo.
    echo Press enter to return to command list
    echo.
    pause >nul
    cls

) ELSE IF "%select%"=="7" (
    netstat -ano
    echo.
    echo Press enter to return to command list
    echo.
    pause >nul
    cls

) ELSE IF "%select%"=="8" (
    ipconfig /flushdns
    echo.
    echo Press enter to return to command list
    echo.
    pause >nul
    cls

) ELSE IF "%select%"=="9" (
    call Scripts\CheckInternetSpeed.bat
    echo.
    echo Checking is done.
    echo Press enter to return to command list
    echo.
    pause >nul
    cls

) ELSE IF "%select%"=="10" (
    call Scripts\NetworkTroubleshooting.bat
    echo.
    echo Checking is done.
    echo.
    pause >nul
    cls

) ELSE IF "%select%"=="11" (
    chkdsk
    echo.
    echo Checking is done
    echo Press enter to return to command list
    echo.
    pause >nul
    cls

) ELSE IF "%select%"=="12" (
    sfc
    echo.
    echo Press enter to return to command list
    echo.
    pause >nul
    cls

) ELSE IF "%select%"=="13" (
    tasklist
    echo.
    echo Press enter to return to command list
    echo.
    pause >nul
    cls

) ELSE IF "%select%"=="14" (
    call Scripts\proxy.bat
    echo.
    echo Press enter to return to command list
    echo.
    pause >nul
    cls

) ELSE IF "%select%"=="15" (
    chkdsk
    echo.
    echo Checking is done
    echo Press enter to return to command list
    echo.
    pause >nul
    cls

) ELSE IF "%select%"=="16" (
    netsh advfirewall show allprofiles
    echo.
    echo Press enter to return to command list
    echo.
    pause >nul
    cls

) ELSE IF "%select%"=="17" (
    wmic product get name,version
    echo.
    echo Press enter to return to command list
    echo.
    pause >nul
    cls

) ELSE IF "%select%"=="18" (
    eventvwr
    echo.
    echo Press enter to return to command list
    echo.
    pause >nul
    cls

) ELSE IF "%select%"=="19" (
    dir C:
    echo.
    echo Press enter to return to command list
    echo.
    pause >nul
    cls

) ELSE IF "%select%"=="20" (
    rstrui
    echo.
    echo Press enter to return to command list
    echo.
    pause >nul
    cls

) 
    ELSE IF "%select%"=="cls" (
    cls

) ELSE IF "%select%"=="exit" (
    exit

) ELSE (
    echo Invalid command. Please try again.
    goto loop
)

goto loop