#!/bin/bash

cd /home
for DIR in *
do
CHK=$(grep -c "/home/$DIR" /etc/passwd)
if [ $CHK -ge 1 ]
then
echo "$DIR is assigned to a user"
else
echo "$DIR is not assigned"
fi
done
