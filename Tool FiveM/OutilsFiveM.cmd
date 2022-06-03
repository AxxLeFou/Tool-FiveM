@echo off
cls
color A
:question
echo [1] Supprimer mon cache FiveM
echo [2] Supprimer DigitalEntitlements et CitizenFX
echo [3] Lancer FiveM
echo [4] Fermer le programme
echo.
set /p choix=Que voulez vous faire (1/2/3/4)? :

if /I "%choix%"=="1" (goto :A)
if /I "%choix%"=="2" (goto :B)
if /I "%choix%"=="3" (goto :C)
if /I "%choix%"=="4" (goto :D)
if /I "%choix%" NEQ 1 (goto :error)
if /I "%choix%" NEQ 2 (goto :error)
if /I "%choix%" NEQ 3 (goto :error)
if /I "%choix%" NEQ 4 (goto :error)

goto question

:A
echo.
echo Ton cache a ‚t‚ supprim‚ !
goto choixa

:B
echo.
echo DigitalEntitlements et CitizenFX supprim‚s !
goto choixb

:C
echo.
echo FiveM lanc‚ !
echo.
echo En cours de chargement...
cd "%localappdata%\FiveM\"
start FiveM.exe
timeout 3
exit

:D
echo.
echo Appuyez sur une touche pour fermer
exit >nul

:error
echo.
echo Nombre incorrect, appuyez sur Entr‚e...
goto choixerror

:choixa
cd %localappdata%
cd FiveM
cd FiveM.app
rmdir /s /q crashes
rmdir /s /q logs
cd data
rmdir /s /q server-cache
rmdir /s /q server-cache-priv
rmdir /s /q cache
rmdir /s /q nui-storage

:choixb
cd %localappdata%
rmdir /s /q DigitalEntitlements
cd %AppData%
rmdir /s /q CitizenFX

:choixerror
goto end

:end
pause>nul
cls
goto question





