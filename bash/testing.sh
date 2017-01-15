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

echo "true thing" || echo 'never will be printed'

(ls nonexistingfile) || echo 'I guess this on will be printed'

(wc -l < $0) || echo "but this one won't"

echo $(pwd) && echo "printed wd"

$(ls nonexistingfile) && echo "that one won't be printed"

not_nully="this is something"
#nully="s"

if [[ -n $not_nully ]]; then
	echo "There is something stored in the var not_nully: $not_nully"
fi

if [ -z $nully ]; then
	echo "nothing is here...."
else
	echo "not nully"
fi

a=500
b=500
b=-200
c=777

echo $a

echo "equal=($equal)"

if [ ${a} -eq ${b} ]; then
	echo "a and b are equal: $a"
	else
		echo "a and b are not equal..."
fi

#echo "a > b ${${a} -gt ${b}}"
