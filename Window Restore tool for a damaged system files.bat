@echo off
title Window Restore tool for a damaged system files
echo 실행 하시겠습니까(Y/N)?
echo.
set /p a=
if %a%==y goto excution
if %a%==y goto exit

:excution
chkdsk /f
sfc /scannow
dism /online /cleanup-image /restorehealth
pause
