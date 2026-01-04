#!/bin/bash


read -p "Enter the age:" age

echo "your age is $age"

if [[ $age -ge 18 ]];
then
	echo "congratulations you are eligibile for the voting......"
else
	echo "sorry...you are not eligibile for the voting......"

fi 
