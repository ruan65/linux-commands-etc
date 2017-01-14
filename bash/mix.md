/******* __echo__  *********/

echo 'hi  there!!'

echo 'hi there' > hello.txt
echo 'hi there' >> hello.txt

/****** __wc word count__ *********/

wc -l < hello.txt  (word count - read from file)

cat hello.txt | wc -w  (better way)

cat hello.txt | wc -w && echo 'done'

(cat hello.txt | wc -w) && echo 'done'

/*** __var assignment__ ******/


myvar="string variable" (no spaces)

echo $myvar

n=10

echo "this is my ${n}th bear"


/******** __run command inside string__ ********/


echo "Number of lines in the file /etc/group is: `wc -l < /etc/group`"


__source__ some_script.sh will write variables in the script to the current shell vars


