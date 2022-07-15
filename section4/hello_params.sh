#!/bin/bash

function hello() {
	for ITEM in $@
	do
		echo "Hello $ITEM"
	done
}

hello Noob Chicken Mouse Dog Cat
