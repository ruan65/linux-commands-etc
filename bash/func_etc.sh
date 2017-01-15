#!/bin/bash

echo testing arguments
echo "num arguments = $#"

NUM_REQUIRED_ARGS=2

if [[ $# -lt NUM_REQUIRED_ARGS ]]; then
	echo "Not enough arguments. Call this script with
	      $0 <name> <number>"
	exit 1      
else echo "Hi $1! You number is $2"
fi

echo "You run thi programm with $# arguments. Here they are:"

for arg in $@; do
	echo $arg
done

function pwd() {

	echo "Enter you pwd:"

	read password

	echo "$1 Your password is $password"
}

pwd $1  # calling function with arg

echo "One more time:"

pwd Diana

echo "Bye!"

exit 0