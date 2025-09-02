@echo off
REM Starting Spoof Process....
setlocal
title Astra Solutions Perm Spoofer
echo made by jimbo :3
echo.
echo.

CD /D "%~dp0"

if not exist "AMIDEWINx64.exe" (
    echo Missing file: AMIDEWINx64.exe
    echo Please make sure your antivirus is off and re-extract the files.
    pause
    exit /b
)

if not exist "amifldrv64.sys" (
    echo Missing file: amifldrv64.sys
    echo Please make sure your antivirus is off and re-extract the files.
    pause
    exit /b
)

pushd "%CD%"
cd /d "%~dp0"

REM Begin spoofing process
setlocal enabledelayedexpansion
echo Randomizing serials...


AMIDEWINx64.exe /SS "T%RANDOM%%RANDOM%-GTA-%RANDOM%%RANDOM%-IB%RANDOM%" >nul 2>&1
AMIDEWINx64.exe /BS "Q%RANDOM%%RANDOM%-AFS-%RANDOM%%RANDOM%-XN%RANDOM%" >nul 2>&1
AMIDEWINx64.exe /BP "F%RANDOM%%RANDOM%-JAB-%RANDOM%%RANDOM%-BX%RANDOM%" >nul 2>&1
AMIDEWINx64.exe /SP "A%RANDOM%%RANDOM%-JSR-%RANDOM%%RANDOM%-7N%RANDOM%" >nul 2>&1
AMIDEWINx64.exe /PSN "Unknown" >nul 2>&1
AMIDEWINx64.exe /SU auto >nul 2>&1

timeout /T 3 >nul
echo.
echo done.
echo restart your pc
echo press any key to exit!
pause >nul

endlocal
pause >nul
