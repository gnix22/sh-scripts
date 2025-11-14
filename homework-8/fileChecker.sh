#!/usr/bin/env bash 
# ^ had to use the above since !/bin/bash wasn't working

# check for whether or not there are two arguments given to the script
if [ $# != 2 ]; then
    echo "Error: An exact number of 2 parameters were not given"
    exit 1
fi

filename="$1"
directoryname="$2"
#check for file name
if [ -f "$filename" ]; then
    echo "File exists in the current directory."
else
    echo "These aren't the files you're looking for."
fi

#check for a directory existing in the current directory
if [ -d "$directoryname" ]; then 
    echo "Directory exists here."
else 
    echo "Keep searching, it's not here."
fi
