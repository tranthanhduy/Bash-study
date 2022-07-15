#!/bin/bash

function file_count() {
	local FILE_COUNT=`ls $DIR | wc -l`
	echo "number of file in $1 are: $FILE_COUNT"
}

DIR=`pwd`
file_count $DIR 
