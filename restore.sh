#!/bin/bash
function restore {
  restorefile="/home/sasha/notebin/files/$1"
  restoreinfo=`cat /home/sasha/notebin/info/$1`

  if [ -f $restorefile ]
  then
    if ! [ -f $restoreinfo ]
    then
      cp $restorefile $restoreinfo
      rm $restorefile
      rm /home/sasha/notebin/info/$1
    else "File exists in the target directory!"
    fi
  else
    echo "File doesn't exist"
    rm /home/sasha/notebin/info/$1
 fi
}
