#!/bin/bash
rsync -azP --delete /var/www/ b@10.25.137.160:/home/b/bkp/app
if [ "$?" -ne "0" ]
then
  touch /home/student/bkpfail
else
  rm /home/student/bkpfail
fi
