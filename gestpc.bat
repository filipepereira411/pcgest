@echo off
:menu
cls
echo ===================================
echo       GESTOR DE FUNCOES DO PC
echo ===================================
echo [1] Desligar O Computador
echo [2] Reiniciar O Computador
echo [3] Suspender O Computador
echo [4] Bloquear O Computador
echo [5] Sair
echo ===================================
set /p opcao=Escolha uma opcao (1-5): 

if "%opcao%"=="1" shutdown /s /t 0
if "%opcao%"=="2" shutdown /r /t 0
if "%opcao%"=="3" rundll32.exe powrprof.dll,SetSuspendState 0,1,0
if "%opcao%"=="4" rundll32.exe user32.dll,LockWorkStation
if "%opcao%"=="5" exit

goto menu
