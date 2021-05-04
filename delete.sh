#!/bin/bash
function deletenote {
 binpath="/home/sasha/notebin/files"
 bininfo="/home/sasha/notebin/info/$1"
 notepath=`readlink -f $1` 

 if [ -f $1 ]
  then
    if ! [ -d $binpath ]
    then mkdir $binpath
    fi

    if ! [ -f $bininfo ]
    then > $bininfo
    fi

    echo "$notepath" > $bininfo
    cp $1 $binpath
    rm $1
 else
    echo "File doesn't exist"
 fi
}
