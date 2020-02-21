#!/bin/bash

# PATRIC 
grep "Bacteria" genome_lineage | awk -F "\t" 'BEGIN{OFS=",";} {print $1,$3,$2;}' | sed 's/^/PATRIC,/g' > select_metadata.txt


# REFSEQ

awk -F "\t" 'BEGIN{OFS=",";} {print $1,$6,$8;}' assembly_summary_bacteria.txt | sed 's/^/REFSEQ,/g' >> select_metadata.txt


# ensembl

awk -F "\t" 'BEGIN{OFS=",";} {print $5,$4,$1;}' species_EnsemblBacteria.txt | sed 's/^/ENSEMBL,/g' >> select_metadata.txt

./fix_sql.py

echo "Done."
