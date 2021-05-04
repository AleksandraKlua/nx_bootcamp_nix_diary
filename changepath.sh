#!/bin/bash
function changepath {
 . ./.diaryrc 
 echo "Write a new directory name: "
  read newway

  if ! [ -d $newway ]
  then mkdir $newway
  fi

  if [ "$WAY" != "$newway" ]
  then
    echo "ED=$ED" > ~/.diaryrc
    echo "WAY=$newway" >> ~/.diaryrc
    echo "PATTERN=$PATTERN" >> ~/.diaryrc
  fi
}
