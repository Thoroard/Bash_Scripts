#!/bin/bash
#Skrypt stwierdza czy podany rok był przestępny

echo "Skrypt stwierdzi czy podany rok był przestępny"
sleep 1
echo
echo "Prosze podać rok"
read r

if [[ $r%4 -ne 0 ]]
   then
      echo "Rok nie jest przestępny"
elif [[ $r%400 -eq 0 ]]
   then
      echo "Rok jest przestępny"
elif [[ $r%100 -eq 0 ]]
   then
      echo "Rok nie jest przestępny"
   else
      echo "Rok jest przestępny"
fi
