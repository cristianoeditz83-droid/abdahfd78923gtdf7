@echo off
setlocal
title ASTRA SOLUTIONS PERM SPOOFING

CD /D "%~dp0"

if not exist "AMIDEWINx64.exe" (
    echo Missing file
    echo Please make sure your antivirus is off and re-extract the files.
    pause
    exit /b
)

if not exist "amifldrv64.sys" (
    echo Missing file
    echo Please make sure your antivirus is off and re-extract the files.
    pause
    exit /b
)

pushd "%CD%"
cd /d "%~dp0"


setlocal enabledelayedexpansion



AMIDEWINx64.exe /SS "T%RANDOM%%RANDOM%-GTA-%RANDOM%%RANDOM%-IB%RANDOM%" >nul 2>&1
AMIDEWINx64.exe /BS "Q%RANDOM%%RANDOM%-AFS-%RANDOM%%RANDOM%-XN%RANDOM%" >nul 2>&1
AMIDEWINx64.exe /BP "F%RANDOM%%RANDOM%-JAB-%RANDOM%%RANDOM%-BX%RANDOM%" >nul 2>&1
AMIDEWINx64.exe /SP "A%RANDOM%%RANDOM%-JSR-%RANDOM%%RANDOM%-7N%RANDOM%" >nul 2>&1
AMIDEWINx64.exe /PSN "Unknown" >nul 2>&1
AMIDEWINx64.exe /SU auto >nul 2>&1


exit
