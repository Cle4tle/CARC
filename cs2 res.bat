@echo off

START C:\res\Qres.exe /x:1440 /y:1080 /c:32 /r:76

tasklist /FI "IMAGENAME eq cs2.exe" 2>NUL | find /I /N "cs2.exe">NUL
if "%ERRORLEVEL%"=="1" START steam://rungameid/730
timeout 10
:whilecs2
timeout 7
tasklist /FI "IMAGENAME eq cs2.exe" 2>NUL | find /I /N "cs2.exe">NUL
if "%ERRORLEVEL%"=="0" goto :whilecs2

START C:\res\Qres.exe /x:1920 /y:1080 /c:32 /r:75

exit