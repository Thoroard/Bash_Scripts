#!/bin/bash

# Z4.1
mkdir $2
cd $2 
touch nie_usuwaj
cd -
# Z4.2
find $1 -type f -iname '*.txt' 
# Z4.3
find $1 -type d -iname '[a,b]'*
# Z4.4
find $1 -type f -perm /a=x -iname '*.sh'
# Z4.5
find $1 -type f -user student
# Z4.6
find $1 -type l
# Z4.7
find $1 -type f -group student -size -1M
# Z4.8
find $1 -type f -executable -perm /a=s
# Z4.9
find $1 -type d -perm /a=d
# Z4.10
find $1 -type f -mmin -60
# Z4.11
find /dev/ -type b,c
# Z4.12
find $1 -type d -empty -exec rm -r '{}' \;
# Z4.13
find $1 -type f -size +10M -exec mv '{}' $2 \;
# Z4.14
find $1 -maxdepth 1 -type d -name 'Z*' -exec cp -R '{}' $2 \;

