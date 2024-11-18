@echo off
rem Script argumentos
rem Autor: Mario Casau
rem Fecha: 18/11/2024
set num1= %1
set num2= %2
set num3= %3
set /A media= (%1 +%2+ %3) /3
echo %media%