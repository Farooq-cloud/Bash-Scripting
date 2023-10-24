#!/bin/bash
Author: Farooq
	
echo "Please Provide username"
read user
echo
grep -q $user /etc/passwd
if [ $? -eq 0 ]
then
echo "Error – This user already exists"
echo
exit 0
fi
echo 
echo "Please provide description"
read d
echo	"Do you want to specify user ID (y/n)?"
read yn
echo
if [ $yn == y ]
then
echo "please enter user ID which is greater than 1001"
read uid

useradd $user -c “$d” -u $uid
echo
echo "$user account has been created successfully with user defined UID"
elif [ $yn == n ]
then
echo "System defined UID will be created"
useradd $user -c "$d"
echo 
echo "$user account has been created successfully with system defined UID"
fi
