@echo off

set VERSION=1.2.2
echo.
echo  ####################################
echo  # Welcome to Irssi installer %VERSION% #
echo  ####################################
echo.
echo  - This installer simply creates a shortcut to the 
echo    application on your desktop. We recommend that 
echo    before continuing, make sure you have left the 
echo    application folder in a place where no one can 
echo    delete it.
echo.
echo    Examples: 
echo        - C:\Irssi
echo        - C:\Program Files\Irssi
echo.
echo  * Press ENTER to continue or Ctrl+C to exit
pause > nul
echo.
echo  * Creating shortchut (%USERPROFILE%\Desktop\Irssi.lnk)
set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%.vbs"
echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Desktop\Irssi.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%~d0%~p0\Irssi.cmd" >> %SCRIPT%
echo oLink.WorkingDirectory = "%~d0%~p0" >> %SCRIPT%
echo oLink.IconLocation = "%~d0%~p0\icon\Irssi.ico" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%
cscript /nologo %SCRIPT%
del %SCRIPT%
echo.
echo  * Shortcut created!
echo.
pause
