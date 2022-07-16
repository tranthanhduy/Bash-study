#!/bin/bash

for ITEM in `pwd`/pic/*.jpg
do
	cp $ITEM `pwd`/pic_ex1/`date +%y-%m-%d`-`basename $ITEM`
done


