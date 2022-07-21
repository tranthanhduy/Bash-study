#!/bin/bash

while true
do
	read -p "1: Disk usage, 2: Uptime, 3: User, q: quit. Your choice: " INPUT
	case $INPUT in
		1)
			df
			;;
		2)
			uptime
			;;
		3)
			who
			;;
		q)
			break
			;;
		*)
			echo "Invalid Option."
			;;
	esac
done
echo "Goodbye!"
