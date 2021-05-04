#!/bin/bash
. ./.diaryrc
function createnote {
year=`date +%Y`
month=`date +%m`
date=`date +%Y-%m-%d_%H-%M`
id=`mktemp -u XXXXXXXX`

for file in $WAY
do
   fileName=`basename file` 
   while [ "$fileName" == *"$id"* ]
   do
      id=`mktemp -u XXXXXXXX`
   done
done
 
if ! [ -d $WAY ]
then
   mkdir $WAY
fi

if ! [ -d $WAY/$year ]
then
   mkdir $WAY/$year
fi

if ! [ -d $WAY/$year/$month ]
then
   mkdir $WAY/$year/$month
fi

settemplate > $WAY/$year/$month/${id}__$date.md
$ED $WAY/$year/$month/${id}__$date.md
}
