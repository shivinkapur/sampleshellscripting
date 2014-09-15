#!/bin/bash

echo "this script will endlessly loop until you stop it"
while true; do
	: # Do nothing
done

# Program to print a text file with headers and footers

TEMP_FILE=/tmp/printfile.txt

pr $1 > $TEMP_FILE

echo -n "Print file? [y/n]: "
read
if [ "$REPLY" = "y" ]; then
	lpr $TEMP_FILE
fi


# Program to print a text file with headers and footers

TEMP_FILE=/tmp/printfile.txt

trap "rm $TEMP_FILE; exit" SIGHUP SIGINT SIGTERM

pr $1 > $TEMP_FILE

echo -n "Print file? [y/n]: "
read
if [ "$REPLY" = "y" ]; then
	lpr $TEMP_FILE
fi
rm $TEMP_FILE

# Clean up function
# Program to print a text file with headers and footers

TEMP_FILE=/tmp/printfile.txt

function clean_up {

	# Perform program exit housekeeping
	rm $TEMP_FILE
	exit
}

trap clean_up SIGHUP SIGINT SIGTERM

pr $1 > $TEMP_FILE

echo -n "Print file? [y/n]: "
read
if [ "$REPLY" = "y" ]; then
	lpr $TEMP_FILE
fi
clean_up

