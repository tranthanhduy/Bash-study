#!/bin/bash

for INPUT in $@
do

	if [ -f $INPUT ]
	then
		echo "This is a regular file: $INPUT"
		ls -la $INPUT
	elif [ -d $INPUT ]
	then
		echo "This is a directory: $INPUT"
		ls -la $INPUT
	elif [ -S $INPUT ]
	then
		echo "This is a socket file: $INPUT"
	else
		echo "This file didn't exist or other type of file: $INPUT"
	fi
done
