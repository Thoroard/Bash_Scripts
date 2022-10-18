#!/bin/bash

mkdir $1

cd $1

mkdir -p d1/d1.1 d2/d2.1 d3/{d3.1,d3.2} Aa Bb Cc && touch d1/t1.txt d2/d2.1/f1.csv d3/d3.2/f2.csv

mv d1/t1.txt d1/d1.1/

cp d2/d2.1/f1.csv d1

mv Aa Aa1

ls -d *1 *2

du -d 1 -h
