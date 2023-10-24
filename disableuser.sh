#!/bin/bash
#Author : Farooq

a=`lastlog | grep -i “username” | awk ‘{print $1}’`
for i in $a
do
usermod -L $i
done
==============================================================================================================================================
#!/bin/bash
lastlog | grep -i "farooq" | awk '{print $1}' | xargs -I{} usermod -L {}
=============================================================================================================================================

Commands

* This command allows to check whether the user is active or not.
  # grep <username> /etc/shadow

* This command shows the which is the user is logged in.
  # lastlog

* If the user is active starting it will represent with $ symbol. If the user in inactive it will represent with ! .

* To unlock the user use this command vi /etc/shadow/<username> and edit.

# lastlog | grep -i “<username>” | awk ‘{print $1}’ | xargs -I{} usermod -L {}. This command will lock the user.


