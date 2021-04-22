#!/bin/bash
if [ $EUID -ne 0 ]
then
	echo "This script must be run as root"
	exit 1
fi
function seg {
	clear
	cd /etc/default
	ls
	echo -n "Indica quin fitxer vols "
	read fitxer
	
	if [ -f $fitxer ]
	then
		cat $fitxer | grep -v '#'
	else 
		echo "EL fitxer demanat no existeix"
	fi
	}
seg
