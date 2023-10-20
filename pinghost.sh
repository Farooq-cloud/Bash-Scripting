#!/bin/bash

hosts="/root/scripts/real-time-scripts/myhosts"
for ip in $(cat $hosts)
do

        ping -c1 $ip &> /dev/null
        if [ $? -eq 0 ]
        then
        echo "$ip is pinging"
        else
        echo "$ip is not working"
        fi
done
