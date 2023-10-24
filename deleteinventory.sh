#!/bin/bash
echo “Please enter the host or IP”
read hip
echo
grep -q $hip  /root/scripts/real-time-scripts/database
if [ $? -eq 0 ]
then
echo
sed -i ‘/ ‘$hip’ /d’ /root/scripts/real-time-scripts/database
echo “$ship is removed from database”
else
echo “No host available in the database”
fi
