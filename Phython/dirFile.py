#!/usr/bin/python
#Script: dirFile.py
#Autor: Mario Casau Fajardo
#Fecha: 26/03/2025
import os.path
import shutil as s
arc = open("rutas.txt","r")
car = arc.readlines()
dire = []
fich = []
for i in car:
    r=i.strip()
    if os.path.isdir(r):
        dire.append(r)
    elif os.path.isfile(r):
        fich.append(r)

print(dire)
print(fich)
while True:
    print("1. Eliminar fichero")
    print("2. Mostrar informacion del directorio")
    print("3. Copiar fichero")
    print("4. Mostrar lista elegida por usuario")
    print("5. Salir")
    case=input("Dime una opcion: ")
    match case:
        case '1':

            fichero=input("Dime el nombre de un fichero: ")
            if os.path.isfile(fichero) and fichero in fich:
                os.remove(fichero)
                print("FIchero eliminado :)")
            else:
                print("Eso no es un fichero :(")
        case '2':
            directorio=input("Dime el nombre de un directorio: ")
            if os.path.isdir(directorio):
                if directorio in dire:
                    most = os.listdir(directorio)
                    for i in most:
                        print(i)
            else:
                print("Eso no es un directorio")
        case '3':
            ficher = input("Dime el nombre de un fichero: ")
            dest= input("Dime el destino del fichero: ")
            if os.path.isfile(ficher):
                if ficher in fich:
                    s.copy(ficher,dest)
            else:
                print("Eso no es un fichero")
        case '4':
            lista = input("Dime una lista (F:Ficheros o D:Directorios): ")
            if lista == "D":
                print(dire)
            elif lista == "F":
                print(fich)
            else:
                print("Letra incorrecta")
        case '5':
            print("Saliendo...")
            break
        case _:
            print("Opcion no valida")
