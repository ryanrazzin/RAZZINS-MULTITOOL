@echo off
chcp 65001
cd dependencies
color 4
cls
title MULTITOOL by Ryan Razzin
:menu
cls
echo.
echo 1.  Check System Info            
echo 2.  List Files in Directory      
echo 3.  Launch Remote Desktop        
echo 4.  Gmail                       
echo 5.  Control Panel                
echo 6.  Task Manager                
echo 7.  Disk Management            
echo 8.  Device Manager               
echo 9.  Notepad                      
echo 10. Browse Apps Folder
echo 11. Event Viewer                                                  Made by 
echo 12. Services                                                    
echo 13. Registry Editor                                        ---- Ryan Razzin ----
echo 14. Windows Update
echo 15. Performance Monitor
echo 16. Snipping Tool
echo 17. Calculator
echo 18. Paint
echo 19. Internet Explorer
echo 20. Microsoft Edge
echo 21. Command Prompt
echo 22. PowerShell
echo 23. Windows Defender
echo 24. Windows Security
echo 25. File Explorer
echo 26. Windows Firewall
echo 27. Windows Settings
echo 28. Disk Cleanup
echo 29. System Restore
echo 30. Close
set /p choice=Select an option (1-30):

if %choice%==1 goto sysinfo
if %choice%==2 goto listfiles
if %choice%==3 goto rdp
if %choice%==4 goto gmail
if %choice%==5 goto controlpanel
if %choice%==6 goto taskmanager
if %choice%==7 goto diskmanagement
if %choice%==8 goto devicemanager
if %choice%==9 goto notepad
if %choice%==10 goto browsefolder
if %choice%==11 goto eventviewer
if %choice%==12 goto services
if %choice%==13 goto regedit
if %choice%==14 goto windowsupdate
if %choice%==15 goto perfmon
if %choice%==16 goto snippingtool
if %choice%==17 goto calculator
if %choice%==18 goto paint
if %choice%==19 goto ie
if %choice%==20 goto edge
if %choice%==21 goto cmd
if %choice%==22 goto powershell
if %choice%==23 goto defender
if %choice%==24 goto windowssecurity
if %choice%==25 goto explorer
if %choice%==26 goto firewall
if %choice%==27 goto settings
if %choice%==28 goto cleanup
if %choice%==29 goto restore
if %choice%==30 goto close
goto menu

:sysinfo
cls
echo ==== System Info ====
systeminfo
pause
goto menu

:listfiles
cls
echo ==== List Files in Directory ====
set /p dir=Enter directory path:
if exist "%dir%" (
    dir "%dir%"
) else (
    echo Directory does not exist!
)
pause
goto menu

:rdp
cls
echo ==== Launching Remote Desktop ====
start mstsc
pause
goto menu

:gmail
cls
echo ==== Opening Gmail ====
start https://mail.google.com
pause
goto menu

:controlpanel
cls
echo ==== Opening Control Panel ====
start control
pause
goto menu

:taskmanager
cls
echo ==== Opening Task Manager ====
start taskmgr
pause
goto menu

:diskmanagement
cls
echo ==== Opening Disk Management ====
start diskmgmt.msc
pause
goto menu

:devicemanager
cls
echo ==== Opening Device Manager ====
start devmgmt.msc
pause
goto menu

:notepad
cls
echo ==== Opening Notepad ====
start notepad.exe
pause
goto menu

:browsefolder
cls
echo ==== Browse Apps Folder ====
set /p appfolder=Enter folder path:
if exist "%appfolder%" (
    for %%f in ("%appfolder%\*.exe") do (
        echo Launching %%f
        start "" "%%f"
    )
) else (
    echo Folder does not exist!
)
pause
goto menu

:eventviewer
cls
echo ==== Opening Event Viewer ====
start eventvwr
pause
goto menu

:services
cls
echo ==== Opening Services ====
start services.msc
pause
goto menu

:regedit
cls
echo ==== Opening Registry Editor ====
start regedit
pause
goto menu

:windowsupdate
cls
echo ==== Opening Windows Update ====
start ms-settings:windowsupdate
pause
goto menu

:perfmon
cls
echo ==== Opening Performance Monitor ====
start perfmon
pause
goto menu

:snippingtool
cls
echo ==== Opening Snipping Tool ====
start snippingtool
pause
goto menu

:calculator
cls
echo ==== Opening Calculator ====
start calc
pause
goto menu

:paint
cls
echo ==== Opening Paint ====
start mspaint
pause
goto menu

:ie
cls
echo ==== Opening Internet Explorer ====
start iexplore
pause
goto menu

:edge
cls
echo ==== Opening Microsoft Edge ====
start msedge
pause
goto menu

:cmd
cls
echo ==== Opening Command Prompt ====
start cmd
pause
goto menu

:powershell
cls
echo ==== Opening PowerShell ====
start powershell
pause
goto menu

:defender
cls
echo ==== Opening Windows Defender ====
start windowsdefender://
pause
goto menu

:windowssecurity
cls
echo ==== Opening Windows Security ====
start windowsdefender:
pause
goto menu

:explorer
cls
echo ==== Opening File Explorer ====
start explorer
pause
goto menu

:firewall
cls
echo ==== Opening Windows Firewall ====
start wf.msc
pause
goto menu

:settings
cls
echo ==== Opening Windows Settings ====
start ms-settings:
pause
goto menu

:cleanup
cls
echo ==== Opening Disk Cleanup ====
start cleanmgr
pause
goto menu

:restore
cls
echo ==== Opening System Restore ====
start rstrui
pause
goto menu

:close
exit
