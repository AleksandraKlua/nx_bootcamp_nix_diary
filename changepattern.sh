#!/bin/bash
. ./.diaryrc
function changepattern {
  echo "Write a pattern file name:"
  read newpattern
  if [ -f $newpattern ]
  then
    echo "ED=$ED" > ~/.diaryrc
    echo "WAY=$WAY" >> ~/.diaryrc
    echo "PATTERN=$newpattern" >> ~/.diaryrc
  else
    echo "File isn't found!"
  fi
}
