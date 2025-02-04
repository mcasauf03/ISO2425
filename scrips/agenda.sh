#!/bin/bash
# Ejercicioagenda
# Autor: Mario Casau Fajardo
# Fecha:03/02/2025

while true; do
echo "a) Añadir una entrada"
echo "b) Buscar por DNI"
echo "c) Ver la agenda completa"
echo "d) Eliminar todas las entradas de la agenda"
echo "e) Finalizar"
read -p "Dime una opcion: " op
	case $op in

		a)
			read -p "Dime un DNI: " dni
			if grep "^$dni:" agenda.txt > /dev/null; then
				echo "Usuario ya existente"
			else
				read -p "Introduce nombre, apellidos, localidad separados por dos puntos: " var
				echo $var >> agenda.txt
			fi
		;;

		b)
			read -p "Dime un DNI: " dbi
			if grep "^$dbi:" agenda.txt > /dev/null; then
				nom=$(cut -d ':' -f 2)
				ape=$(cut -d ':' -f 3)
				loc=$(cut -d ':' -f 4)
				echo "La persona con DNI $dbi es $nom $ape y vive en $loc"
			else
				echo "Error"
			fi
		;;

		c)
			if [ -s agenda.txt ]; then
				cat agenda.txt
			else
				echo "Agenda vacia"
			fi
		;;

		d)
			echo "" > agenda.txt
		;;

		e)
			echo "Saliendo"
			break
		;;
	esac
done
