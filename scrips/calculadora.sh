#!/bin/bash
# Script ejerciciocalculadora
# Autor: Mario Casau Fajardo
# Fecha:  04-2-2025

clear

if [ -f $1 ]; then
    echo "Error: El fichero $1 ya existe."
fi
if [ $# == 2 ]; then
	echo ""
else
	echo "Error, numero de parametros incorrecto."
fi
num=0

while [ $num -lt $2 ]; do
read -p "Operacion op1 y op2: " Operacion op1 op2

	if [ $Operacion == X ]; then
		break
	fi


	case $Operacion in

		S)
			resul=$(($op1 + $op2))
		;;

		R)
 			resul=$(($op1 - $op2))
		;;

		M)
			resul=$(($op1 * $op2))
		;;

		D)
			if [ $op2 -eq 0 ]; then
			echo "Error, division entre 0"
			fi
		   	resul=$(($op1 / $op2))
		;;

		X)
			break
		;;


		*)
			echo "Operacion no valida" 
		;;

	esac

	echo "$Operacion $op1 $op2" >> $1
	echo "Resultado: $resul"
	num=$(($num + 1))
done
