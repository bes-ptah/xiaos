@echo off
Setlocal Enabledelayedexpansion

REM         Created by the WinBatchX Team
REM         This plugin is designed to make inserting images easy.
REM         .............................................................
REM         . Example: insertbmp /p:"TheBATeam.bmp" /x:607 /y:400 /z:15 .
REM         .............................................................

FOR %%A In (batbox.exe Getlen.bat Box.bat) DO (IF Not Exist "%%A" (Echo. Button Function, Error... File [%%A] is Missing...))

:: If /i "%~1" == "" (goto :help)
:: If /i "%~1" == "/?" (goto :help)
:: If /i "%~1" == "-h" (goto :help)
:: If /i "%~1" == "help" (goto :help)
:: If /i "%~1" == "-help" (goto :help)

:: If /i "%~1" == "" (goto :eof)
:: If /i "%~2" == "" (goto :help)
:: If /i "%~3" == "" (goto :help)
:: If /i "%~4" == "" (goto :help)

REM cordinates

Set _X=%~1
Set _Y=%~2
set _Z=%~3
set "_photoset=%~4"


cd insertbmp
insertbmp /p:"%_photoset%" /x:%_X% /y:%_Y% /z:%_Z%
cd ..

exit /b


:help
cls
echo.
echo This plugin creates an image on the command line. It only uses .bmp files only.
echo.
echo X = x-axis
echo Y = y-axis
echo Z = size of photo
echo.
echo Example: insertbmp /p:"example.bmp" /x:607 /y:400 /z:15
pause > nul
exit /b