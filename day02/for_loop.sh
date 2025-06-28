#!/bin/bash

<< task 

1 starting range
2 ending range

task

for (( i=$2; i<=$3; i++ ))
do 
	mkdir "${1}${i}"

done
