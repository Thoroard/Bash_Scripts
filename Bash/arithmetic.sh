#!/bin/bash

f1()
{
	a=$(($1 + $2))
	b=$(($1 - $2))
	if [[ $b -eq 0 ]]
	then
		echo "error"
		exit -1
	else
		c=$(($a/$b))
	fi
	echo $c
}

f1 $1 $2