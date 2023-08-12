@echo off
@setlocal DisableDelayedExpansion
NET SESSION
IF %ERRORLEVEL% NEQ 0 GOTO ELEVATE
GOTO ADMINTASKS

:ELEVATE
CD /d %~dp0
MSHTA "javascript: var shell = new ActiveXObject('shell.application'); shell.ShellExecute('%~nx0', '', '', 'runas', 1);close();"
EXIT

:ADMINTASKS
:top
color 6
cls
echo:
echo:  ####      ##     ##   ##  ##  ##   ##  ##   ##  ##     ##     ##        ####   
echo:   ##      ####    ### ###  ## ##    ##  ##   ### ##    ####    ##       ##  ##  
echo:   ##     ##  ##   #######  ####     ##  ##   ######   ##  ##   ##       ##  ##  
echo:   ##     ######   ## # ##  ###      ##  ##   ######   ######   ##        #####  
echo:   ##     ##  ##   ##   ##  ####     ##  ##   ## ###   ##  ##   ##           ##  
echo:   ##     ##  ##   ##   ##  ## ##    ##  ##   ##  ##   ##  ##   ##       ##  ##  
echo:  ####    ##  ##   ##   ##  ##  ##    ####    ##  ##   ##  ##   ######    ####  HERE!
echo: 
echo SELECT WINDOWS VERSION(CHECK BY TYPING WINVER IN RUN (WIN+R))
echo [1] Home
echo [2] Professional
echo [3] Education
echo [4] Enterprise
echo [5] ProfessionalN
echo [6] Server2016
set "Home=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
set "HomeN=3KHY7-WNT83-DGQKR-F7HPR-844BM"
set "HomeSingleLanguage=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH"
set "HomeCountrySpecific=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR"
set "Professional=W269N-WFGWX-YVC9B-4J6C9-T83GX"
set "ProfessionalN=MH37W-N47XK-V7XM9-C7227-GCQG9"
set "Education=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"
set "EducationN=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ"
set "Enterprise=NPPR9-FWDCX-D2C8J-H872K-2YT43"
set "EnterpriseN=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4"
set "Server=WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY"
choice /C:123456 /M "Enter the value :" /N
set _choice=%errorlevel%
if %_choice% == 1 goto home	
if %_choice% == 2 goto Professional
if %_choice% == 3 goto Education	
if %_choice% == 4 goto Enterprise
if %_choice% == 5 goto ProfessionalN
if %_choice% == 6 goto Server
:home
slmgr /ipk %Home%
goto final
:Professional
slmgr /ipk %Professional%
goto final
:ProfessionalN
slmgr /ipk %ProfessionalN%
goto final
:Education
slmgr /ipk %Education%
goto final
:Enterprise
slmgr /ipk %Enterprise%
goto final
:Server
slmgr /ipk %Server%
goto final
:final
slmgr /skms kms8.msguides.com
slmgr /ato
pause
goto top
