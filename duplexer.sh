#!/bin/bash

echo 'Enter suffix including .'
read $string

count=1

for odd in `ls odd* |sort -V`
	do
		mv $odd page-"$count$string"
		count=`expr $count + 2`		
	done

count=0

for even in `ls even*|sort -V`
	do
		count=`expr $count + 2`
	done
	
for even in `ls even*|sort -V`
	do
		mv $even page-"$count$string"
		count=`expr $count - 2`
	done
read $string
