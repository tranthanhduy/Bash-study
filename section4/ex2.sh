#!/bin/bash

function file_count() {
	local FILE_COUNT=`ls $1 | wc -l`
	echo "number of file in $1 are: $FILE_COUNT"
}

DIR=`pwd`
file_count $DIR
file_count /var
file_count /etc
file_count /usr/bin
