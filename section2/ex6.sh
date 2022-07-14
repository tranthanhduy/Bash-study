#!/bin/bash

read -p "Please input full path of a file or a directory: " INPUT

if [ -f $INPUT ]
then
	echo "This is a regular file."
elif [ -d $INPUT ]
then
	echo "This is a directory."
elif [ -S $INPUT ]
then
	echo "This is a socket file."
else
	echo "This file didn't exist or other type of file."
	exit
fi

ls -la $INPUT
