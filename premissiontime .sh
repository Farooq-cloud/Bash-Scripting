#!/bin/bash

total=`ls-l farooq* | wc -l`
echo "It will take $total seconds to complete"
echo
for i in farooq.*
do
echo "Assign write permissions to $i"
chmod 777 $i
sleep 1
done
