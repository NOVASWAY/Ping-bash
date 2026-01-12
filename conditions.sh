echo "What is your name? "
read Name
if [ $Name == You ]; then
	echo "You are the one"
elif [ $Name == Me ]; then
	echo "You can never be me"
else
	echo "What's your name"
fi
