S#!/bin/bash
# Scrip 4:Users
# Autor: Mario Casau Fajardo
# Fecha: 11-02-2025
clear
echo "==================================="
IFS=:
date=$(date +%D)
timee=$(date +%H.%M)
echo "Informe de usuarios el dia $date a las $timee"
contador=0
while read us x uid gid d h shell;do
	if [ $# -eq 1 ]; then 
		if [ $uid -ge $1 ]; then
			echo "$us - $uid"
		contador=$((contador +1))
		fi
	else
		if [ $uid -ge 1000 ]; then
			echo "$us - $uid"
		contador=$((contador +1))
		fi
	fi

done < /etc/passwd
echo "$date -- $time -- El usuario $USER ha solicitado un informe de usuarios." >> /tmp/logeventos
echo "Total: $contador usuarios"
echo "==================================="
