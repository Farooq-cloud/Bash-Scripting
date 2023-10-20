#!/bin/bash

ping -c1 65.1.94.151 &> /dev/null

if [ $? -eq 0 ]
then
echo "Ping Works"
else
echo "Not able to ping"
fi
