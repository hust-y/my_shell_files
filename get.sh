#!/bin/bash

cd /mnt/c/Users/32664/Downloads

if [ $# -eq 0 ]; then
	file=$(ls | grep -E "lab|hw" | grep "*.zip" )
	prefix=${file%%[!0-9][!0-9]*}
	ls /mnt/c/Users/32664/Downloads | grep -E "lab|hw" | xargs mv -t /mnt/d/code/py-code/cs61a
	cd /mnt/d/code/py-code/cs61a
	ls | grep -E "lab|hw" | grep "\.zip" | xargs -0 unzip
	echo "$prefix"
fi	
