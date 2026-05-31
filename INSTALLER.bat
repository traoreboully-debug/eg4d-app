@echo off
title EG4D - Installation automatique
color 0A
echo.
echo  ███████╗ ██████╗ ██╗  ██╗██████╗
echo  ██╔════╝██╔════╝ ██║  ██║██╔══██╗
echo  █████╗  ██║  ███╗███████║██║  ██║
echo  ██╔══╝  ██║   ██║╚════██║██║  ██║
echo  ███████╗╚██████╔╝      ██║██████╔╝
echo  ╚══════╝ ╚═════╝       ╚═╝╚═════╝
echo.
echo  Installation de EG4D en cours...
echo  ===================================
echo.

cd /d C:\EG4D

echo [1/3] Installation des dependances...
call npm install
echo.

echo [2/3] Test de l'application...
echo  L'application va demarrer pour test...
echo  Fermez la fenetre EG4D pour continuer l'installation.
call npx electron . --no-sandbox
echo.

echo [3/3] Creation de l'executable Windows...
call npx electron-builder --win --x64
echo.

echo  ===================================
echo  Installation terminee !
echo  L'executable se trouve dans C:\EG4D\dist\
echo  ===================================
pause
