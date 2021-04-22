#!/bin/bash
function serv {
	echo "Quin servei vols aturar? "
	echo -n "Escriu aquí : "
	read servei
	return 0
}
function serve {
	systemctl stop $servei 
	systemctl status $servei | grep Active:

}
function check {
contador = "c" ;
while [ contador == 'c' ]
do
	serv
	echo -n "Vols Continuar?: "
	read contador
done
return 10
}

if [ $EUID -ne 0 ]
then
	echo "This script must be run as root"
	exit 1
fi
serv
serve
check







