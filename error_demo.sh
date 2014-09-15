# Example of a really bad idea

cd $some_directory
rm *

# Check the exit status

cd $some_directory
if [ "$?" = "0" ]; then
	rm *
else
	echo "Cannot change directory!" 1>&2
	exit 1
fi

# A better way

if cd $some_directory; then
	rm *
else
	echo "Could not change directory! Aborting." 1>&2
	exit 1
fi

# An error exit function

function error_exit
{
	echo "$1" 1>&2
	exit 1
}

# Using error_exit

if cd $some_directory; then
	rm *
else
	error_exit "Cannot change directory!  Aborting."
fi

# Simplest of all

cd $some_directory || error_exit "Cannot change directory! Aborting"
rm *

# Another way to do it if exiting is not desired

cd $some_directory && rm *
