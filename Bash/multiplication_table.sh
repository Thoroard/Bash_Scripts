#!/bin/bash
#Skrypt rozpisuje tabliczke mnożenia o podanych wymiarach

tabs -4

wypisz()
{
   k=1
   while [[ $k -le $r ]]
   do
      echo -ne "$(($1*$k))\t"
      k=$(($k+1))
   done
}

echo "Prosze podać rozmiar tablicy"
read r
w=1

while [[ $w -le $r ]]
do
   wypisz $w
   echo ""
   w=$(($w+1))
done

echo "Dziękuję za skorzystanie ze skryptu"
