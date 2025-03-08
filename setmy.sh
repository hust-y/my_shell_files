#!/bin/bash

if [[ $# -le 2 ]] ; then
	echo "Setmy need at least 3 input."
	exit 1
fi

setget()
{	
	sed -i "s/^$1=.*/$1=$2/g" /mnt/d/code/shell/get.sh
}	

setbash()
{
	sed -i "s/^$1=.*/$1=$2/g" ~/.bashrc
}

setcoding()
{
	sed -i "s/^$1=.*/$1=$2/g" /mnt/d/code/shell/coding.sh
}

case $1 in
	g)
		setget $2 $3
		;;
	b)
		setbash $2 $3
		;;
	c)
		setcoding $2 $3
		;;
	a)
		setget $2 $3
		;;
	*)
		echo "Invalid input for the first input. Input g means set get.sh file, input b means set .bashrc fileinput a means set all the file."
esac

