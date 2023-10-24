#!/bin/bash
#Aurthor : Farooq
echo "Please provide a username"
read user
echo
useradd $user
echo "User has been created"
==================================================================================================================================================

#!/bin/bash
#Aurthor : TTT
echo "Please provide a username"
read user
echo
grep -q $user /etc/passwd
if [ $? -eq 0 ]
then
echo "error – user $user already exists"
echo "please define another user"
echo
exit 0
fi	
useradd $user
echo "$user has been created succesfully"

==================================================================================================================================================

#!/bin/bash
echo "Please provide a username"
read user
echo
grep -q $user /etc/passwd
if [ $? -eq 0 ]
then
echo "error – user $user already exists"
echo "please define another user"
echo
exit 0
fi
echo "Please add description for the user"
read desc
echo
echo "Please specify the password inactivity period (in days):"
read inactivity_period
echo
#Create the user with the corrected double quotes and password inactivity period
useradd "$user" -c "$desc" -f "$inactivity_period"
echo "User has been created successfully"
echo “$user has been created succesfully”



