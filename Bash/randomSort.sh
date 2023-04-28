#!/bin/bash

# Z1

f1()
{
	if [ ! -r "$1"  ];then
		echo "Error, you can't read this file"
		exit -1
	fi

	if [ ! -f "$2"  ];then
		touch "$2"
	fi

	if [ ! -f "$3"  ];then
		touch "$3"
	fi

	if [ ! -w "$2"  ];then
	    	echo "Error, you can't save to file $2"
		exit -1
 	fi

	if [ ! -w "$3"  ];then
		echo "Error, you can't save to file $3"
		exit -1
	fi

	>"$2"
	>"$3"

	while read line;
	do
		if [ "$(($RANDOM % 2))" -eq 0 ]; then
			echo "$line" >> "$2"
		else
			echo "$line" >> "$3"
		fi
	done < "$1"

}

f1 $1 $2 $3

