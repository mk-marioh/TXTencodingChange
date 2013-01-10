#!/bin/sh

if [ $# -lt 1 ] || [ $# -gt 1 ]
then
	echo "Wrong number of arguments supplied " $#
	exit;
fi

for f in $(find $1 *.txt -type f)
do
	echo "Changing character encoding at file: " $f
	recode iso88597...utf8 $f
done
