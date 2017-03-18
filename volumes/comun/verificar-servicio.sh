#!/bin/bash

function verificarSaludDelServicio() {
	iniciado=1; 
	i=0; 

	while [ $i -lt $1 ] && [[ $iniciado -ne 0 ]]; 
	do 
		echo "Verificando salud del servicio $2, tiempo de espera: $($1 -$i) segundos...";  
		(echo > /dev/tcp/localhost/$3) >/dev/null 2>&1; 
		iniciado=$?; 
		i=$[$i +1]; 
		sleep 1; 
	done;
	
	if [[ $iniciado -eq 0 ]]; then
		echo "Servicio $2 listo."
	else
		echo "Tiempo de espera agotado. "
	fi
	

	return $iniciado
}

# $1 = segundos de espera
# $2 = nombre del servicio
# $3 = puerto del servicio

verificarSaludDelServicio $1 $2 $3

