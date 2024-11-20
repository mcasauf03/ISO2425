@echo off
rem Script argumentos
rem Autor: Mario Casau
rem Fecha: 18/11/2024
echo Press 1 para crear un archivo .txt

echo Press 2 para crear un archivo .bat

set /p op="Seleccione 1 o 2: "


if %op% == 1 goto op1

if %op% == 2 goto op2

:op1
set /p namefile="Dime el nombre del fichero: "
echo > %namefile%.txt
pause
exit

:op2
set /p namefile="Dime el nombre del fichero: "
echo > %namefile%.bat
pause
exit