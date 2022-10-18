#!/bin/bash
echo "Program pokazujący dzielniki podanej liczby"
sleep 0.5
echo "Podaj liczbę"
read a

sleep 0.6

echo "Dzielniki liczby $a to:"

for (( i=1 ; i<=$a/2; i++))
do
   if [[ $a%$i -eq 0 ]]
   then
      printf " $i"
   fi
done
printf " $a"
echo

