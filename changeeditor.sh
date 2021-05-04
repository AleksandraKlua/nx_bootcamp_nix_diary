#!/bin/bash
function changeeditor {
  . ./.diaryrc
  echo "Write an editor name: "
  read neweditor
  if [ "$ED" != "$neweditor" ]
  then
    echo "ED=$neweditor" > ~/.diaryrc
    echo "WAY=$WAY" >> ~/.diaryrc
    echo "PATTERN=$PATTERN" >> ~/.diaryrc
  fi
}
