#!/bin/bash

DATE=`date +%y-%m-%d`
read -p "Please enter a file extension: " EXTENSION
read -p "Please enter a file prefix: " PREFIX

if [ -z $PREFIX ]
then
	PREFIX=$DATE
fi

ITEMS=`pwd`/pic/*.$EXTENSION

for ITEM in $ITEMS
do
	NEW_ITEM="$PREFIX-`basename $ITEM`"
	echo "Copying $ITEM to `pwd`/pic_ex3/$NEW_ITEM"
	cp $ITEM `pwd`/pic_ex3/$NEW_ITEM
done
