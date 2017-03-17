#!/bin/bash

function esperar() {
	iniciado=1; 
	i=0; 

	while [ $i -lt $1 ] && [[ $iniciado -ne 0 ]]; 
	do 
		echo "Esperando que MySQL se inicie completamente... (intento $i)";  
		(echo > /dev/tcp/localhost/3306) >/dev/null 2>&1; 
		iniciado=$?; 
		i=$[$i +1]; 
		sleep 1; 
	done;
	
	if [[ $iniciado -eq 0 ]]; then
		echo "MySQL Iniciado."
	else
		echo "Tiempo de espera agotado. "
	fi
	

	return $iniciado
}

esperar $1

