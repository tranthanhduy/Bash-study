#!/bin/bash

read -p "Please enter a file extension: " EXTENSION
if [ -z $EXTENSION ]
then
	echo "You just input nothing."
	exit
fi

read -p "Please enter a file prefix: " PREFIX

if [ -n $PREFIX ]
then
	for ITEM in `pwd`/pic/*.$EXTENSION
	do
		cp $ITEM `pwd`/pic_ex2/$PREFIX-`basename $ITEM`
	done
else
	for ITEM in `pwd`/pic/*.$EXTENSION
	do
		cp $ITEM `pwd`/pic_ex2/`date +%y-%m-%d`-`basename $ITEM`
	done
fi
