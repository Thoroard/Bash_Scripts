#!/bin/bash

#Z1
bubble_sort()
{	
	declare -a Tablica

	for i in "$@"
	do
		Tablica+=($i)
	done


	arr=("${Tablica[@]}")
	size=${#arr[@]}
	echo ${Tablica[@]}


	for (( i=0; i<$size; i++))
	do
		for (( j=$i; j<$size; j++))
		do
			if [[ ${arr[$i]} -gt ${arr[$j]} ]]
			then
				temp=${arr[$i]}
				arr[$i]=${arr[$j]}
				arr[$j]=$temp
			fi
		done
	done


	Tablica=("${arr[@]}")
	echo ${Tablica[@]}
}
bubble_sort $@

#Z2
d2_arr()
{
	if [[ $1 -lt 0 || $2 -lt 0 ]]
	then
		echo "error"
		exit -1
	fi

	declare -A arr
	rows=$1
	cols=$2

	for (( i=1; i<=$rows; i++ ))
	do
		for (( j=1; j<=$cols; j++))
		do
			arr[$i,$j]=$(($i*$j))
			echo -ne "${arr[$i,$j]}\t"
		done
		echo	
	done
}
d2_arr $1 $2

#Z3
integral()
{
	declare -a val_arr
	val_arr=($@)
	integral=0

	for (( i=0; i<$#-1; i++ ))
	do
		a=${val_arr[i]}
		b=${val_arr[i+1]}
		sum=$a+$b
		result=($sum)/2
		integral=$integral+$result
	done
	echo $integral | bc -l

}
integral $@
