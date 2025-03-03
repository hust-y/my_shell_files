#!/bin/bash

from_d="/mnt/c/Users/32664/Downloads"
to_d="/mnt/d/code/py-code/cs61a"

cd $from_d 

if [ $# -eq 0 ]; then
	filename=$(ls | grep -E "lab|hw" | grep "\.zip$" )
	prefix=${filename%%[^a-zA-Z0-9]*}
fi	


echo $filename
mv $filename $to_d
cd $to_d
unzip $filename

sed -i "s/^destination=.*/destination='$prefix'/" ~/.bashrc
cd $prefix
