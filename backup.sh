#!/bin/bash

tar -cvf /tmp/backup.tar /etc/ /var/
gzip /tmp/backup.tar
find /tmp/backup.tar.gz -mine -1 -type f -print &> /dev/null
if [ $? -eq 0 ]
then
echo "Backup was created"
echo
echo"Archiving backup"
#scp /tmp/backup.tar.gz root@ip:/path
else
echo "Backup failed"
fi
