#!/bin/bash

echo 'Enter suffix including .'
read $string

count=1

for odd in odd*
	do
		mv $odd page-"$count$string"
		count=`expr $count + 2`
	done

count=0

for even in even*
	do
		count=`expr $count + 2`
	done
	
for even in even*
	do
		mv $even page-"$count$string"
		count=`expr $count - 2`
	done
