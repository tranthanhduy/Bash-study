#!/bin/bash

echo $1
INPUT="$1"
if [ -f $INPUT ]
then
	echo "$INPUT is a regular file."
	exit 0
elif [ -d $INPUT ]
then
	echo "$INPUT is a directory."
	exit 1
else
	echo "$INPUT is some other type of file."
	exit 2
fi
