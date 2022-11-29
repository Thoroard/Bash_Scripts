#!/bin/bash

f2()
{
	if [[ $# -gt 2 ]]
	then
		echo "error to many arguments"
		exit -1
	else
		a=$1
		b=$2
		while [[ $a -ne  $b ]]
		do
			if [[ $a -le $b ]]
			then
				b=$(($b-$a))
			else
				a=$(($a-$b))
			fi
		done
	fi
	echo $a
}
f2 $1 $2