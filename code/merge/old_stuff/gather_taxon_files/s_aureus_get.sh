#!/bin/bash

#create first_step.txt. All entries ordered:
# 	DBNAME,file identifier,taxid,organism name

# PATRIC
grep -i "Staphylococcus aureus" genome_lineage | awk -F "\t" 'BEGIN{OFS=",";} {print $1,$3,$2;}' | sed 's/^/PATRIC,/g' > first_step.txt

# REFSEQ
grep -i "Staphylococcus aureus" assembly_summary_bacteria.txt | awk -F "\t" 'BEGIN{OFS=",";} {print $1,$6,$8;}' | sed 's/^/REFSEQ,/g' >> first_step.txt

# ENSEMBL
grep -i "Staphylococcus_aureus" species_EnsemblBacteria.txt | awk -F "\t" 'BEGIN{OFS=",";} {print $5,$4,$1;}' | sed 's/^/ENSEMBL,/g' >> first_step.txt


# debug help
echo "Number of entries after search: "
wc -l first_step.txt
echo "Number of PATRIC lines: "
grep "PATRIC" first_step.txt | wc -l
echo "Number of REFSEQ lines: "
grep "REFSEQ" first_step.txt | wc -l
echo "Number of ENSEMBL lines: " 
grep "ENSEMBL" first_step.txt | wc -l


# get file locations
./path_getter.py

# debug help
echo "Number of entries after looking for filepaths: "
wc -l file_locations.txt
echo "Number of PATRIC lines: "
grep "PATRIC" file_locations.txt | wc -l
echo "Number of REFSEQ lines: "
grep "REFSEQ" file_locations.txt | wc -l
echo "Number of ENSEMBL lines: "
grep "ensembl" file_locations.txt | wc -l


# create directories if they do not exist already

mkdir -p PATRIC
mkdir -p REFSEQ
mkdir -p ENSEMBL

# sort files

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
done < file_locations.txt

echo "Number of PATRIC files: "
ls PATRIC | wc -l
echo "Number of REFSEQ files: "
ls REFSEQ | wc -l
echo "Number of ENSEMBL files: "
ls ENSEMBL | wc -l 

echo "Done."
