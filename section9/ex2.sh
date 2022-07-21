#!/bin/bash

read -p "How many lines of /etc/passwd would you like to show ? " LINE_SUM
LINE_NUM=1
while read LINE
do
	if [ $LINE_NUM -gt $LINE_SUM ]
	then
		break
	else
		echo "$LINE"
	fi
	((LINE_NUM++))
done < /etc/passwd
