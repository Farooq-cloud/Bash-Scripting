#!/bin/bash

echo "How many files need to be created"
read t
echo "Please Enter starting name of the file"
read k
for f in $(seq 1 $t)
do
touch $k.$f
done
