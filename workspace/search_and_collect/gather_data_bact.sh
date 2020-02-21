#!/bin/bash


# THIS IS THE CODE FOR SEARCHING ENTRIES FROM THE SQL DATABASE WE HAVE COMPILED. IT USES OUR OWN PREPARED METADATA


# prep search

search_term_cl=$1 # get the first variable given on the command line

search_term=$(echo "$search_term_cl" | sed "s/^/|/g" | sed "s/$/|/g")

mkdir -p "$search_term_cl" & cd "$search_term_cl"



# Search our metadata file (made from our sql database of references) for the desired values.

# for reference, right now 1 is the filepath

grep -i "$search_term" ../our_db_metadata_bact.txt | awk -F "|" 'BEGIN{OFS=",";} {print $1;}' > first_step.txt

mkdir -p PATRIC
mkdir -p REFSEQ
mkdir -p ENSEMBL

while IFS="" read -r file_path; do
	dbase=$(echo $file_path | awk -F '/' '{print $8}')
	if [ "$dbase" == "new_PATRIC" ]
	then
		cp $file_path ./PATRIC/.
	elif [ "$dbase" == "new_REFSEQ" ]
	then
		cp $file_path ./REFSEQ/.
	else
		cp $file_path ./ENSEMBL/.
	fi
done < first_step.txt


