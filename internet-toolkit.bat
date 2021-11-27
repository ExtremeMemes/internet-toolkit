@echo off
echo Extreme's Internet Toolkit
echo https://github.com/ExtremeMemes/internet-toolkit

:home
echo ...
ping 192.0.2.2 -n 1 -w 500 > nul
echo ...
ping 192.0.2.2 -n 1 -w 500 > nul
echo ...
ping 192.0.2.2 -n 1 -w 500 > nul
echo ...
echo .....................

ECHO "Choose an option .."
ECHO "1 = Ping google.com"
ECHO "2 = What is my Internet Speed?"
ECHO "3 = What is my IP?"
ECHO "4 = ipconfig release, renew, and flush"
ECHO "5 = Network Stats"
ECHO "6 = System Info"
ECHO "7 = Exit"

SET /p option=Choose one option - 
echo .....................
echo .
echo .
echo .
echo ..................... 

IF %option%==1 GOTO :ping
IF %option%==2 GOTO :speed
IF %option%==3 GOTO :ipconfig
IF %option%==4 GOTO :ipconfigrrf
IF %option%==5 GOTO :netstat
IF %option%==6 GOTO :sysinfo
IF %option%==7 exit
PAUSE
exit


:ping
ping google.com
pause
GOTO :home


:speed
echo YOU MUST HAVE PYTHON 3.4 OR LATER INSTALLED FOR THIS TO WORK
echo . 
echo .
echo .
pip install speedtest-cli
echo .
echo .
echo .
speedtest-cli
pause
GOTO :home

:ipconfig
ipconfig /all
pause
GOTO :home

:ipconfigrrf
ipconfig /release
ipconfig /renew
ipconfig /flushdns
pause
GOTO :home

:netstat
netstat
pause
GOTO :home

:sysinfo
systeminfo
pause
GOTO :home

:netstat
netstat
pause
GOTO :home

:sysinfo
systeminfo
pause
GOTO :home