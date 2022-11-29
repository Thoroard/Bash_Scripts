#!/bin/bash

arr=("$@")
f4()
{
	local arr=${arr[@]}

	sum=0
	for i in ${arr[@]}
	do
		sum=$(($sum+$i))
	done
	echo $sum
}
f4


