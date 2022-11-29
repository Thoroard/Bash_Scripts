#!/bin/bash


f3()
{
	if [[ $# -gt 2 ]]
        then
                echo "error to many arguments"
                exit -1
	else
		a=$1
		b=$2
		while [[ $b -ne 0 ]]
		do
			c=$(($a%$b))
			a=$b
			b=$c
		done
	fi
	echo $a
}
f3 $1 $2


