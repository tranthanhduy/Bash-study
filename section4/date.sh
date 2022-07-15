#!/bin/bash
function hello() {
	echo "HELLO"
	now
}

now() {
	echo "It's `date +%r`"
}

hello
