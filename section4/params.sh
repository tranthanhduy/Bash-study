#!/bin/bash

my_function() {
	GLOBAL_VAR=1
}

#GLOBAL_VAR is NOT available yet.
echo "GLOBAL_VAR: $GLOBAL_VAR"
my_function
#GLOBAL_VAR is available.
echo "GLOBAL_VARL: $GLOBAL_VAR"
