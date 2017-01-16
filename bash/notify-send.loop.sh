#!/bin/bash

times=1000
min=1
max=20

if [[ -z $1 ]]; then

	echo "must provide an argument..."
    
elif [ $1 -gt $max ] || [ $1 -lt $min ]; then

	echo "You have provided $1. Usage: $BASH_SOURCE [number of times 1..20]"
	
else
	for (( i = 1; i <= $1; i++ )); do
		
		t=$(($i * $times))

		if [ $((i % 2)) -eq 0 ]; then
			urg="normal"
		elif [ $((i % 3)) -eq 0 ]; then
			urg="critical"
		else
			urg="low"
		fi

		notify-send -u $urg -t $t "$urg $t"

	done	
fi