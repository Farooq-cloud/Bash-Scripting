#!/bin/bash

echo
echo "Please choose options below"
echo "a= Apple"
echo "b= Carrot"
echo "c= Jai Balayya"
echo "d= Custard Apple"
echo "e= Coffee"

read choices
case $choices in
a) pwd;;
b) hostname;;
c) who;;
d) uptime;;
e) cal;;
*) echo "Individual training choices -- Thank you Bye"
esac
