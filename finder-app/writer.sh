#!/bin/bash

# Script for assignment 1
# Author: Charlie Moreno

# Check arguments
# Check arguments

if [ $# -ne 2 ]
then
        echo "Invalid Arguments.\n"
        echo "The expected arguments are:\n\t1)full path to a file.\n\t2)Text string to write.\n"
        exit 1
fi

writefile=$1
writestr=$2
directory="$(dirname ${writefile:1})"

if [ -d "${directory}" ]
then
        echo "${writestr}" > .${writefile}
else
        mkdir -p ${directory}
	echo "${writestr}" > .${writefile} 
fi
