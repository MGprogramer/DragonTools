@echo off
echo        

CHCP 65001
cls
echo [96m @2024_DRAGON_Tool_Package_Pack[0m
echo [95m ═══════════════════════════════════════════════════════════════════════════════════[0m  
echo [94m Disclaimer:
echo [94m We are not responsible for anything did with our tools,[0m
echo [94m this is only for educational purposes[0m
echo [95m ═══════════════════════════════════════════════════════════════════════════════════[0m  
title DRAGON TOOLS MENU
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
  
:main
cmdMenuSel f870 "--help" "SMB BruteForce" "IP ToolKit" "Quit" 
if %errorlevel% == 1 goto helpscr
if %errorlevel% == 2 goto smbbruteforcescr
if %errorlevel% == 3 goto iptoolkitscr
if %errorlevel% == 4 goto quitscr
goto main

:main2
cls 
echo [95m ═══════════════════════════════════════════════════════════════════════════════════[0m
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
cmdMenuSel f870 "--help" "SMB BruteForce" "IP ToolKit" "Quit" 
if %errorlevel% == 1 goto helpscr
if %errorlevel% == 2 goto smbbruteforcescr
if %errorlevel% == 3 goto iptoolkitscr
if %errorlevel% == 4 goto quitscr



:helpscr
cls
color 3
echo [93m This is a list of commands and how to use them.
echo [95m ═══════════════════════════════════════════════════════════════════════════════════[0m  
echo --help [shows a list of comands]
echo [95m ═══════════════════════════════════════════════════════════════════════════════════[0m
echo SMB BruteForce [does an SMB bruteforce password atack on an ip]
echo --How to use it--
echo [1.0]You need to know the computer ip
echo [1.1]You need to know the computer usename 
echo [1.1]!(The username need to be the administrator user)!
echo [2.0]Choose a wordlist 
echo [2.0]You can find it on our wordlist folder in the data folder
echo [2.1]Copy the wordlist Path
echo [2.1]You can do it by clicking on the file and pressing Ctrl Shift C
echo [2.2]Remove the commas in the Path 
echo [3.0]Write down all the statements mentioned above
echo [4.0]Run the SMB BruteForce by this menu 
echo [4.1]Fill the questioned fields with the information you had noted before
echo [5.0]See if you get access to the target computer 
echo [5.0]If you cant get access it will probably be:
echo [5.0]The Firewall is blocking it
echo [5.0]The password is not on the wordlist
echo [95m ═══════════════════════════════════════════════════════════════════════════════════[0m    
echo quit [Closes the program]
echo [95m ═══════════════════════════════════════════════════════════════════════════════════[0m    
pause
goto main2

:smbbruteforcescr
start smb_bruteforce.bat
exit

:iptoolkitscr
start IPTOOLKIT.bat
exit



:quitscr
exit