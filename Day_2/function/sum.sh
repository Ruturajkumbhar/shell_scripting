#!/bin/bash

addition() {
	sum=$(( $1 + $2 ))
	echo "the addition is : $sum"

}

read -p "Enter first number:" num1

read -p "Enter second number:" num2



addition "num1" "num2"
