#!/bin/bash
function createnote(){
year=`date +%Y`
month=`date +%m`
date=`date +%Y-%m-%d_%H-%M`
id=`mktemp -u XXXXXXXX`

for file in ~/diary
do
   fileName=`basename file` 
   while [ "$fileName" == *"$id"* ]
   do
      id=`mktemp -u XXXXXXXX`
   done
done
 
if ! [ -d ~/diary ]
then
   mkdir ~/diary
fi

if ! [ -d ~/diary/$year ]
then
   mkdir ~/diary/$year
fi

if ! [ -d ~/diary/$year/$month ]
then
   mkdir ~/diary/$year/$month
fi

> ~/diary/$year/$month/${id}__$date.md
}
