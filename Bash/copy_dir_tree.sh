#!/bin/bash

mkdir $2

cp -r $1 $2

cd $2

ls -l

tree -h

pwd

cd -

rm -r $2
