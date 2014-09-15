#!/bin/bash

echo -n "Enter a number between 1 and 3 inclusive > "
read character
if [ "$character" = "1" ]; then
    echo "You entered one."
else
    if [ "$character" = "2" ]; then
        echo "You entered two."
    else
        if [ "$character" = "3" ]; then
            echo "You entered three."
        else
            echo "You did not enter a number"
            echo "between 1 and 3."
        fi
    fi
fi


echo -n "Enter a number between 1 and 3 inclusive > "
read character
case $character in
    1 ) echo "You entered one."
        ;;
    2 ) echo "You entered two."
        ;;
    3 ) echo "You entered three."
        ;;
    * ) echo "You did not enter a number"
        echo "between 1 and 3."
esac