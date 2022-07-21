#!/bin/bash

while true
do
	read -p "Enter the input: 1: Show disk usage, 2: Show uptime: " CHOICE
	case "$CHOICE" in
		1)
			df -h
			;;
		2)
			uptime
			;;
		*)
			echo "Usage 1|2"
			break
			;;
	esac
done
