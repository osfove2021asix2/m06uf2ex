#!/bin/bash
if [ $EUID -ne 0 ]
then
	echo "This script must be run as root"
	exit 1
fi

function aaa {
	clear
	REGEX='^(ht|f)tp(s?)\:\/\/[0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*(:(0-9)*)*(\/?)( [a-zA-Z0-9\-\.\?\,\’\/\\\+&amp;%\$#_]*)?$'
	echo -n "URL: "
	read url
	if [[ $url =~ $REGEX ]]
then    
	nslookup $url
else
	exit 1
fi
	}
aaa
