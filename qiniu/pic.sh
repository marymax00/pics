#!/bin/bash

imgs=`./qrsctl listprefix angel-sweet-house ''`

i=0 
echo $imgs | tr " " "\n" | while read line
do
    if(($i>0))
    then
        echo $line
        ./qrsctl get angel-sweet-house "$line" $i.jpg
    fi
    i=$(($i+1))
done

