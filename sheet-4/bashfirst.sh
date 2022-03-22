#!bin/bash
echo "Enter a filename "
read $FILENAME

if [ -f "$FILENAME" ]
then
    echo "This is a file."
else
    echo "This is not a file."
fi
