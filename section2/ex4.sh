#!/bin/bash

#Check if /etc/shadow exists
if [ -e /etc/shadow ]
then
	echo "Shadow passwords are enable."
fi

if [ -r /etc/shadow ]
then
	echo "You have permissions to edit /etc/shadow."
else 
	echo "You do NOT have permissions to edit /etc/shadow."
fi
