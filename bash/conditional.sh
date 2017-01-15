#!/bin/bash

NAME=$1
GREETINGS="Hi my dear "
HEAD_SHAKE="**slow headshaking**"
echo "user: $NAME"

if [ -z $NAME ]; then echo "not really good name it is"  # checking if NAME lengh is 0
else echo "$GREETINGS $NAME" 
fi

