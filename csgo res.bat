@echo off

START C:\res\Qres.exe /x:1440 /y:1080 /c:32 /r:76

tasklist /FI "IMAGENAME eq csgo.exe" 2>NUL | find /I /N "csgo.exe">NUL
if "%ERRORLEVEL%"=="1" START steam://rungameid/730
timeout 10
:whilecsgo
timeout 7
tasklist /FI "IMAGENAME eq csgo.exe" 2>NUL | find /I /N "csgo.exe">NUL
if "%ERRORLEVEL%"=="0" goto :whilecsgo

START C:\res\Qres.exe /x:1920 /y:1080 /c:32 /r:75

exit