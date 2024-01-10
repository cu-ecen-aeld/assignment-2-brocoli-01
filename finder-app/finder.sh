#!/bin/sh
# Script for assignment 1
# Author: Charlie Moreno

filesdir=$1
searchstr=$2

# Check arguments
if [ $# -ne 2 ]
then
	echo "Invalid Arguments.\n"
	echo "The expected arguments are:\n\t1)Directory of the filesystem.\n\t2)Text string to search.\n"
	exit 1
fi

#Check file directory
if [ -d ".${filesdir}/" ]
then
	#Find files and matching lines
	nFiles="$(find .${filesdir} -type f | wc -l)"
	nLines="$(grep -o -r -w "${searchstr}" .${filesdir}* | wc -l)" 
else
	echo "${filesdir} does not represent a directory on the filesystem"
	exit 1
fi

#Print operation
echo "The number of files are ${nFiles} and the number of matching lines are ${nLines}."
