#!/bin/bash

debug=0
zipmod=1

from="/mnt/c/Users/32664/Downloads"
to="/mnt/d/code/py-code/cs61a"

cd $from 

if [ $# -eq 0 ]; then
	file=$(ls | grep -E "lab|hw" | grep "\.zip$" )
	prefix=${file%%[^a-zA-Z0-9]*}
else 
	file=$(ls | grep -E "$1" | grep "\.zip$" )
	prefix=${file%-*}
fi	


echo $file
mv $file $to
cd $to
if [[ $zipmod -eq 1 ]]; then
	unzip $file
	if [[$debug -eq 0]]; then
		rm $file
	fi
fi

sed -i "s/^destination=.*/destination='$prefix'/" ~/.bashrc
cd $prefix
