#!/bin/bash

function logit() {
	local MESSAGE=$@
	echo "$MESSAGE"
	logger -i -t randomly -p user.info "${MESSAGE}"
}

logit "RANDOM NUMBER: ${RANDOM}"
logit "RANDOM NUMBER: ${RANDOM}"
logit "RANDOM NUMBER: ${RANDOM}"
