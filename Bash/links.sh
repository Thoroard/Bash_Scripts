#!/bin/bash
# Z2.1
mkdir $1
# Z2.2
mkdir $1/{D1,D2,D3,D4} && touch $1/D2/F1.txt $1/D3/F1.txt $1/D4/F1.txt
# Z2.3
ln -s /etc/passwd $1/D1
# Z2.4
readlink -f ./$1/D1/passwd
# Z2.5
ln -T $1/D3/F1.txt F2.txt
mv F2.txt $1/D2
# Z2.6
chmod o-rw $1/D2/F2.txt
# Z2.7
sudo chown :mail $1/D2/F2.txt 
# Z2.8
sudo chgrp mail $1/D3
# Z2.9
chmod -x $1/D3
# Z2.10
chmod -w $1/D2
# Z2.11
chmod -r $1/D4
# Z2.12
chmod o+t $1/D4
# Z2.13
touch $1/D1/scr1.sh && chmod ug+x $1/D1/scr1.sh
# Z2.14
chmod u+s $1/D1/scr1.sh && chmod g+s $1/D1/scr1.sh
