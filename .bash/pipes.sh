#!/bin/bash
URL=http://rh-platform.rohea.local/
RESULT=`curl --silent $URL`
i=1
until [ `echo $RESULT | grep 127.0.0.1:7777 --count` -eq 0 ]
do
	echo "Running curl $i"
	i=`expr $i + 1`
	RESULT=`curl --silent $URL`
done
echo "Pipes are fully working"

