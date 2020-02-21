#!/bin/bash

#Will create text file of taxids for refseq
awk -F "\t" '{print $6}' assembly_summary_bacteria.txt|sort|uniq > bacteria_taxids_refseq.txt

#Will create text file of taxids for patric
grep ";Bacteria;" genome_lineage|awk -F "\t" '{print $3}'|sort|uniq > bacteria_taxids_patric.txt

#Will create text file of taxids for ensembl
# wget ftp://ftp.ensemblgenomes.org/pub/bacteria/release-45/species_EnsemblBacteria.txt
awk -F "\t" '{print $4}' species_EnsemblBacteria.txt|sort|uniq > bacteria_taxids_ensembl.txt

#Gets taxids at the genus and species levels and puts the information into an sql database
python new_database.py bacteria_taxids_refseq.txt bacteria_taxids_patric.txt bacteria_taxids_ensembl.txt

