#!/bin/bash
clear
echo
echo “Select one of the below option for your database entry”
echo ‘a=Add a record’
echo ‘d=Delete a record’
echo
read choice 
case $choice in 
a) /root/scripts/real-time-scripts/inventory.sh;;
d) /root/scripts/real-time-scripst/deleteinventory.sh;;
*) echo “Invalid option please choose correct record – Thank you”
esac
