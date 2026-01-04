#!/bin/bash

num=0

while [[ $num -le 5 ]]
do
	echo "hello world..."
	num=$num+1
	mkdir "demo$num"
done


