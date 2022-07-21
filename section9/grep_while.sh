#!/bin/bash

grep line text_file | while read LINE
do
	echo "line: ${LINE}"
done
