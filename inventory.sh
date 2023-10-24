#!/bin/bash
echo "Please enter the hostname"
read host
grep -q $host /root/scripts/real-time-scripts/database
if [ $? -eq 0 ]
then
echo "Error -- $host already exists in the database"
echo
exit 0
fi

echo "please enter ip"
read ip
grep -q $ip /root/scripts/real-time-scripts/database
if [ $? -eq 0 ]
then
echo "Error -- $ip already exists in the database"
echo
exit 0
fi

echo "Please enter the description"
read desc
echo
echo "$host $ip $desc" >> /root/scripts/real-time-scripts/database
echo "Records added to database"
echo
