#!/usr/bin/python
#Script: infoUsers.py
#!Autor: Mario Casaú Fajardo
#Fecha: 26/03/2025
import os
import cpuinfo as cpu
uid = os.getuid()
if uid == 0:
    while True:
        print("1. Muestra informacion del SSOO")
        print("2. Info de los usuarios ")
        print("3. Crear directorios")
        print("4. Salir")
        case=input("Dime una opcion: ")
        match case:

            case '1':
                x = os.uname()
                y = cpu.get_cpu_info()["brand_raw"]
                print(x)
                print("Mi brand_raw es: ", y)
            case '2':
                usuario = input("Dime un usuario: ")
                fich=open("/etc/passwd", "r")
                cont=fich.readlines()
                enc = 0
                for i in cont:
                    if i.split(":")[0] == usuario:
                        enc =1
                        final=i
                        break
                if enc == 1:
                    print(final)
                else:
                    print("Usuario no encontrado")
                    os.system("useradd ", usuario)
            case '3':
                direc = input("Dime el nombre de un directorio: ")
                if os.path.exists(direc) and os.path.isdir(direc):
                    print("La carpeta ya existe y es un directorio:)")
                else:
                    os.mkdir(direc)
                    print("Carpeta creada :)")
            case '4':
                break
            case _:
                print("Opcion no valida")
else:
    print("Ese usuario no es root")
