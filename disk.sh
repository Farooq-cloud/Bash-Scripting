#!/bin/bash
a=`df -h | egrep -v "tmpfs|overlay" | tail -n+2 | awk '{print $5}' | cut -d'%' -f1`
for i in $a
do
if [ $i -ge 10 ]
then
echo "check this disk space $i which has reached the threshold"
fi
done

============================================================================================================
Commands

To check the space of a disk in a particular portion without overlay
# df -h | egrep -v “tmpfs|overlay”| tail -n+2 

To print disk percentage use below command
# df -h | egrep -v "tmpfs|overlay" | tail -n+2 | awk '{print $5}'

To print disk percentage number without symbol use below command
# df -h | egrep -v "tmpfs|overlay" | tail -n+2 | awk '{print $5}' | cut -d'%' -f1
