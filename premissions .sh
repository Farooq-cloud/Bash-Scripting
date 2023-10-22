#!/bin/bash

for f in farooq.*
do
echo "Assign permissions to $f"
chmod 755 $f
sleep 1
done
