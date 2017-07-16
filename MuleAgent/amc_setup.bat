@echo off
setlocal
rem %~dp0 is location of current script under NT
set REALPATH=%~dp0
set BASE_DIR=%REALPATH:~0,-5%

IF NOT EXIST "%BASE_DIR%\tools" mkdir "%BASE_DIR%\tools"
IF EXIST "%BASE_DIR%\bin\agent-setup-1.4.1-amc-final.jar" move "%BASE_DIR%\bin\agent-setup-1.4.1-amc-final.jar" "%BASE_DIR%\tools"
java -jar "%BASE_DIR%\tools\agent-setup-1.4.1-amc-final.jar" %*
