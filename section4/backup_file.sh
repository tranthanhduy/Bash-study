#!/bin/bash

function backup_file() {
if [ -f $1 ]
then
	# use local for BACKUP variable
	local BACKUP="/tmp/`basename $1`.`date +$%F`.$$"
	echo "Backing up $1 to $BACKUP"
	cp $1 $BACKUP
else
	echo "The file doesn't exist."
	return 1
fi
}

backup_file /etc/hosts
# backup_file /etc/hosts123adsf

if [ "$?" -eq "0" ]
then
	echo "Backup succeeded!"
else
	echo "Backup failed!"
fi


