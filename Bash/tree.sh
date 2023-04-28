#!/bin/bash

# Z2

f2()
{
	if [ ! -d $1  ];
	then
		echo "Error $1 is not a directory"
		exit -1
	fi

	if [ ! -w $1 ];
	then
		echo "Error you can't save to file $1"
		exit -1
	fi
	
	if [ ! -r $2  ];
	then
		echo "Error you can't read file $2"
		exit -1
	fi

	while read dirname;
	do
		mkdir "$1/$dirname"
		
		for i in {0..9};
		do
			touch "$1/$dirname/F$i"
		done
	done < $2
}

f2 $1 $2
