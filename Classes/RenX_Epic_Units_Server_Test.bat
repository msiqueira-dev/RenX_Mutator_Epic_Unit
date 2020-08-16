@echo off
::
:: VARIABLES
::
SET MUTATOR_WITH_PACKAGE=RenX_Mutator_Epic_Units.RenX_Mutator_Epic_Units 
SET SERVER_NAME=Merak_Hagen_Epic_Units
SET PASSWORD=Test
::
:: END OF VARIBLES
::

setlocal enableextensions disabledelayedexpansion
set "search=RenegadeXServer"
set "replace=%SERVER_NAME%"
set "textFile=E:\Games\Renegade-X\UDKGame\Config\UDKGame.ini"
for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
        set "line=%%i"
        setlocal enabledelayedexpansion
        >>"%textFile%" echo(!line:%search%=%replace%!
        endlocal
    )
SET a=start UDK.exe server
SET a=%a% CNC-Walls?
SET a=%a%mutator=MUTATOR_WITH_PACKAGE?
SET a=%a%maxplayers=64?
SET a=%a%bRequiresPassword=1?
SET a=%a%?AdminPassword=TestAdmin?
SET a=%a%?GAMEPASSWORD=%PASSWORD%?
SET a=%a%SERVER_NAME="Merak_Hagen_Epic_Units"?
SET a=%a%GameName="Merak_Hagen_Epic_Units"?
SET a=%a%TimeLimit=0?
SET a=%a%ServerDescription="Merak_Hagen_Epic_Units"?
SET a=%a%-port=7777
echo.
echo %a%
echo.
%a%
::UDK.exe 127.0.0.1?PASSWORD=%PASSWORD%
