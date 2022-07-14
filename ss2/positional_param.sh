#!/bin/bash

echo "HEHHEHE"

echo "0: $0"
echo "1: $1"
echo "2: $2"
for ITEM in $@
do
	echo "item: $ITEM"
done
