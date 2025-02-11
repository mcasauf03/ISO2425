#!/bin/bash
# Scrip 3:fiveOrMore
# Autor: Mario Casau Fajardo
# Fecha: 11-02-2025
arch=$(ls $2 | wc -l)
if [ $# -ne 2 ]; then
	exit
fi

if [ -f $1 ]; then
	echo "El fichero $1 ya existe"
	exit
fi


if [ $arch -eq 0 ]; then
	echo "Directorio $2 vacio"
	exit
fi

echo "Mario Casau"
num=0
for i in $2/*.txt; do
		lineas=$(cat $i | wc -l)
		if [ $lineas -ge 5 ]; then
			echo $i
			echo $i >> $1
		pala=$(wc -w $i | cut -d " " -f "1")
		echo "Este fichero tiene $pala palabras" >> $i.q
		cat $i >> $i.q
		fi
done

nume=$(cat $1 | wc -l)
echo "Se han identificado $nume ficheros" >> $1
