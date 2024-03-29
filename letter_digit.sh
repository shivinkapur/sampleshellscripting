#!/bin/bash

echo -n "Type a digit or a letter > "
read character
case $character in
            # Check for letters
    [a-z] | [A-Z] ) echo "You typed the letter $character"
            ;;

            # Check for digits
    [0-9] )     echo "You typed the digit $character"
            ;;

            # Check for anything else
    * )         echo "You did not type a letter or a digit"
esac