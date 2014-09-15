#!/bin/bash

# Example 1
for i in word1 word2 word3; do
    echo $i
done
    
# Example 2    
for i in $(cat ~/.bash_profile); do
    count=$((count + 1))
    echo "Word $count ($i) contains $(echo -n $i | wc -c) characters"
done

# Example 3
for i in $@; do
    echo $i
done

# Example 4
for filename in $@; do
    result=
    if [ -f $filename ]; then
        result="$filename is a regular file"
    else
        if [ -d $filename ]; then
            result="$filename is a directory"
        fi
    fi
    if [ -w $filename ]; then
        result="$result and it is writable"
    else
        result="$result and it is not writable"
    fi
    echo "$result"
done
