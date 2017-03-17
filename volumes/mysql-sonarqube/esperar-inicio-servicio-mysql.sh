#!/bin/bash

function esperar() {
	iniciado=1; 
	i=0; 

	while [ $i -lt $1 ] && [[ $iniciado -ne 0 ]]; 
	do 
		echo Verificando estado de MySQL...;  
		(echo > /dev/tcp/localhost/3306) >/dev/null 2>&1; 
		iniciado=$?; 
		i=$[$i +1]; 
		sleep 1; 
	done;

	return $iniciado
}

esperar $1

