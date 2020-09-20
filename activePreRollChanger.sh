#!/bin/bash

#this script is to change what files are in the "active directory" after clearing it out
#Usage:
#	./activePreRollChanger.sh activeDirectory collectionDirectory numberOfFilesToPutIntoActive
#
#NOTES: -ALL files in the collection directory MUST be one word, no spaces
#       -This script also assumes that all the files in the

if [ $# -eq 3 ]
then

	activeDir="$1"
	collectionDir="$2"
	numberOfFiles="$3"

#	echo "The active Dir is: $activeDir"
#	echo "The collection dir is: $collectionDir"
#	echo "The number of files: $numberOfFiles"

	if [ "$(ls -A $activeDir)" ]
	then
#		echo "Removing anything in the active directory: $activeDir"
		`rm $activeDir/*`
	fi

	#create a temp directory to prevent duplicate files
	`mkdir tempDir`
	`cp $collectionDir/* tempDir`
	#make the counter
	counter=0

	#loop through the files until the number of files is reached
	while [ $counter -lt $numberOfFiles ]
	do
		#makes the array of the collection directory
		array=(`ls tempDir`)
		#makes the variable that holds the number of files in the collection directory
		totalFiles=`ls tempDir| wc -l`

		#make random number gen between values
		RESULT=$RANDOM
		let "RESULT %= $totalFiles"
		RESULT=$(($RESULT+0))

		#makes the name of the file
		fileName=preroll-$counter.mp4
		#copy the file to the active directory with the new name
		`cp tempDir/${array[$RESULT]} $activeDir/$fileName`
		#remove the file from the temp directory
		`rm tempDir/${array[$RESULT]}`

		#add one to the counter
		let "counter++"
	done

	#remove the tempDir
	`rm -R tempDir`

else
	echo "incorrect usage of script"
	echo "Usage:"
	echo "	./activePreRollChanger.sh activeDirectory collectionDirectory numberOfFilesToPutIntoActive"
fi
