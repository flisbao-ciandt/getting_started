echo OFF

NET SESSION >nul 2>&1

IF %ERRORLEVEL% EQU 0 (

   echo.

) ELSE (

   echo.-------------------------------------------------------------

   echo ERROR: YOU ARE NOT RUNNING THIS WITH ADMINISTRATOR PRIVILEGES.

   echo. -------------------------------------------------------------

   echo. If you're seeing this, it means you don't have admin privileges!

   pause

   echo.

   echo. You will need to restart this program with Administrator privileges by right-clicking and select "Run As Administrator"

   pause 

    echo.

   echo Press any key to leave this program. Make sure to Run As Administrator next time!

   pause

   EXIT /B 1

)

echo Installing packages with Chocolatey
pause

@rem ----[ Whatever you want to install, place it below this point, each item on its own line (to make it easier to find later on. ] ----

choco install wsl2 -y
choco install wsl-ubuntu-2004 -y
choco install notepadplusplus -y
choco install git -y
choco install vscode -y
choco install dotnet4.5 -y
choco install visualstudio2019professional -y
choco install k9s -y
choco install postman -y
choco install dbeaver -y
choco install gcloudsdk -y
choco install golang -y
choco install gradle -y
choco install intellijidea-community -y
choco install openjdk11 -y

@rem ---[You can add as many programs here as you desire!]----

pause
echo.
echo Your installation is complete.
pause