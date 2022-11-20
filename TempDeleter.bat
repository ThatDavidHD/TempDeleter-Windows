:: Created by ThatDavidHD
:: https://github.com/ThatDavidHD/TempDeleter-Windows
@echo off
title TempDeleter for Windows
cls
color b
echo.
echo        _____  ___  __  __  ___  ___   ___  _     ___  _____  ___  ___
echo       ^|_   _^|^| __^|^|  \/  ^|^| _ \^|   \ ^| __^|^| ^|   ^| __^|^|_   _^|^| __^|^| _ \
echo         ^| ^|  ^| _^| ^| ^|\/^| ^|^|  _/^| ^|^) ^|^| _^| ^| ^|__ ^| _^|   ^| ^|  ^| _^| ^|   /
echo         ^|_^|  ^|___^|^|_^|  ^|_^|^|_^|  ^|___/ ^|___^|^|____^|^|___^|  ^|_^|  ^|___^|^|_^|_\
echo.
echo       Loading...
reg query HKU\S-1-5-19 >nul 2>nul || (
    cls
    color c
    echo.
    echo        _____  ___  __  __  ___  ___   ___  _     ___  _____  ___  ___
    echo       ^|_   _^|^| __^|^|  \/  ^|^| _ \^|   \ ^| __^|^| ^|   ^| __^|^|_   _^|^| __^|^| _ \
    echo         ^| ^|  ^| _^| ^| ^|\/^| ^|^|  _/^| ^|^) ^|^| _^| ^| ^|__ ^| _^|   ^| ^|  ^| _^| ^|   /
    echo         ^|_^|  ^|___^|^|_^|  ^|_^|^|_^|  ^|___/ ^|___^|^|____^|^|___^|  ^|_^|  ^|___^|^|_^|_\
    echo.
    echo       Error! This application needs to be started as administrator.
    echo.
    echo       Press any key to exit . . . 
    pause >nul
    exit
)
(
    del /f /s /q "%temp%"
    del /f /s /q "%windir%\Temp"
    del /f /s /q "%windir%\Prefetch"
    del /f /s /q "%windir%\Debug"
    del /f /s /q "%windir%\Logs"
) >nul 2>nul
cls
color a
echo.
echo        _____  ___  __  __  ___  ___   ___  _     ___  _____  ___  ___
echo       ^|_   _^|^| __^|^|  \/  ^|^| _ \^|   \ ^| __^|^| ^|   ^| __^|^|_   _^|^| __^|^| _ \
echo         ^| ^|  ^| _^| ^| ^|\/^| ^|^|  _/^| ^|^) ^|^| _^| ^| ^|__ ^| _^|   ^| ^|  ^| _^| ^|   /
echo         ^|_^|  ^|___^|^|_^|  ^|_^|^|_^|  ^|___/ ^|___^|^|____^|^|___^|  ^|_^|  ^|___^|^|_^|_\
echo.
echo       Successfully deleted temporary files!
echo.
echo       Press any key to exit . . . 
pause >nul
exit