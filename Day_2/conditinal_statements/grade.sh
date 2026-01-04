#!/bin/bash

read -p "Enter the marks:" marks

if [[ $marks -ge 90 ]];
then
	echo "Congratulations you got A+ Grade"

elif [[ $marks -ge 80 && $marks -lt 89 ]];
then
	echo "congratulations you get A Grade"

elif [[ $marks -ge 60 && $marks -lt 79 ]];
then 
	echo "congratulations you got B Grade"

elif [[ $marks -ge 30 && $marks -lt 59 ]];
then 
	echo "congratulations you got C Grade....study well"

else
	echo "sorry you failed......study well and try next year"

fi

