#!/bin/bash

clear
echo "Hello Guys What is your name?"
read a
echo "Hello $a"
echo "How the bash scripting is going on? Do you like it (y/n)"
read like

if [ "$like" == y ]
then
echo "Thank you"
elif [ "$like" == n ]
then
echo "Please send us your feedback"
echo
fi
