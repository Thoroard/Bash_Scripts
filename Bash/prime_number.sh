#!/bin/bash
#Skrypt sprawdzający czy liczba jest pierwsza
echo "Skrypt sprawdzi czy podana liczba jest liczbą pierwszą"
echo "Prosze podać liczbę"
read n
s=0
for (( i=2; i<=$n/2; i++ ))
do
if [[ $n%$i -eq 0 ]]
then s=$i
else s=$s
fi
done
if [[ $s -eq 0 ]]
then echo "Podana liczba jest liczbą pierwszą"
else echo "Podana liczba nie jest liczbą pierwszą"
fi
echo
echo "Dziękuję za skorzystanie ze skryptu"
