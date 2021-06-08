#!/bin/sh
echo "MYVAR is: $MYVAR"
MYVAR="hi there"
echo "MYVAR is: $MYVAR"

# For the first line, myvar has not been set yet so it is blank.

# You can export variables to be used in bash files.

# You can also use the . command to source the script so that exporting is not necessary