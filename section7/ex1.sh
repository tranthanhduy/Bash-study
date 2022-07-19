#!/bin/bash


FILE_PID="/tmp/sleep­walking­server.pid"
read -p "We gonna mess up something. Please type start/stop: " INPUT

case "$INPUT" in
	start|START)
		echo "Starting... Let's mess this fckin thing up!"
		./sleep­walking­server.sh &
		;;
	stop|STOP)
		if [ ! -e $FILE_PID ]
		then
			echo "I got nothing to kill!" && exit 1
		fi

		echo "Stopping... BORINGGGG!"
		kill $(cat $FILE_PID)
		;;
	*)
		echo "Usage: $0 start|stop"; exit 1
		;;
esac
