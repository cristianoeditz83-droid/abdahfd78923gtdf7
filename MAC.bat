@echo off
title Astra Solutions - Mac Spoofing
setlocal EnableDelayedExpansion

set "reg_path=HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}"


net session >nul 2>&1 || exit /b


for /f "skip=2 tokens=2 delims=," %%A in ('wmic nic where "NetConnectionId!=''" get NetConnectionId /format:csv') do (
    if not defined NetworkAdapter set "NetworkAdapter=%%A"
)

if not defined NetworkAdapter exit /b


set "#hex_chars=0123456789ABCDEF"
set "mac_address="
for /l %%A in (1,1,12) do (
    set /a "r=!random! %% 16"
    set "mac_address=!mac_address!!#hex_chars:~%r%,1!"
)


set /a "r=!random! %% 4"
for %%C in (2 6 A E) do (
    if !r! equ 0 set "mac_address=!mac_address:~0,1!%%C!mac_address:~2!"
    set /a r-=1
)


for /f "tokens=2 delims=[]" %%A in ('wmic nic where "NetConnectionId='!NetworkAdapter!'" get Caption /format:value ^| find "Caption"') do (
    set "Index=%%A"
    set "Index=!Index:~-4!"
)

:: jimbo was here (im ud lil bro)
>nul 2>&1 (
    netsh interface set interface "!NetworkAdapter!" admin=disable
    reg add "!reg_path!\!Index!" /v "NetworkAddress" /t REG_SZ /d "!mac_address!" /f
    netsh interface set interface "!NetworkAdapter!" admin=enable
)

exit
