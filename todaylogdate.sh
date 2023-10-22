#!/bin/bash

echo "Please enter Day(e.g Mon)"
read day
echo "Please enter month(e.g July)"
read month
echo
echo "Please enter date"(e.g 17)"
read date
echo
last |grep "$day $month $date" |awk '{print$1}
