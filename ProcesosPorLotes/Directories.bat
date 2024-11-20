@echo off
rem Script argumentos
rem Autor: Mario Casau
rem Fecha: 18/11/2024
echo Press 1 para crear un fichero con el nombre que pida el usuario .txt
echo Press 2 para mostrar el arbol de directorios de la carpeta del usuario
echo Press 3 para Mostrar archivos con extension .txt
echo Press 4 para crear los directorios alfredoff, marinapg y ramonam en tu directorio actual
echo Press 5 para copiar el contenido de la carpeta de Usuario a el escritorio

set /p op="Seleccione un numero del 1 al 5: "
if %op% == 1 goto op1
if %op% == 2 goto op2
if %op% == 3 goto op3
if %op% == 4 goto op4
if %op% == 5 goto op5

:op1
set /P fichero="Introduce el nombre del fichero: "
echo  fichero > %fichero%.txt
pause
exit

:op2
echo Este es el arbol de la carpeta Alumno
tree %USERPROFILE%
pause 
exit

:op3
echo Estos son todos los archovos con extension .txt
dir *.txt
pause
exit

:op4
mkdir alfredoff marinapg namonam
pause
exit

:op5
mkdir C:\copia
xcopy /E %USERPROFILE% C:\copia
dir C:\copia
pause 
exit