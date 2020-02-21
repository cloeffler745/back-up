#!/usr/bin/env python


# BOILDER PLATE -----------------------------------------------------------------------------------------------------------------------------------------------

import taxid_helper_functions as taxid_helper
import sys
import sqlite3
import pandas as pd
from ete3 import NCBITaxa

ncbi_taxa = NCBITaxa()

#text file
filename_r = sys.argv[1]
filename_p = sys.argv[2]
filename_e = sys.argv[3]
#database
conn = sqlite3.connect('/u/home/c/cloeffle/scratch/sql/bact_data_from_summarys.db')
c = conn.cursor()


# FUNCTIONS ---------------------------------------------------------------------------------------------------------------------------------------------------

# Create database if it does not already exist

def create_sql_database():
	c.execute("CREATE TABLE IF NOT EXISTS BACT_DB(GIVENTAXID INT, GENUSTAXID INT, SPECIESTAXID INT, DBNAME TEXT)")
	conn.commit()

# get genus, species, and strain taxids

def find_taxids(given_taxid):
	# these taxonomy levels are above genus
	nope = ['subfamily', 'family', 'suborder', 'order', 'subclass', 'class', 'subphylum', 'phylum', 'subkingdom', 'kingdom', 'superkingdom']

	special_handle = []

	new_entry = taxid_helper.get_ids(given_taxid, special_handle, nope)

	# handle the less straightforward cases

	if special_handle: # if there is something in special handle	
		spec_id = "0"

		# is there a species rank?
		if "species" in special_handle[1]: # yes - set species taxid
			spec_id = special_handle[0][special_handle[1].index("species")]
		# is there a genus rank?
		if "genus" in special_handle[1]: # yes - set genus taxid
			genus_id = special_handle[0][special_handle[1].index("genus")]
		else: # no - run get genus function
			genus_id = taxid_helper.get_genus(special_handle[0][-1], nope)
		entry = [int(spec_id), int(genus_id)]
	#	  print(entry) # check, when debugging, that everything looks good
		return [genus_id, spec_id]

	return new_entry

# process the text file

def process_file_refseq():
	e = open("error_taxids.txt", "a")
	e.writelines("REFSEQ:\n")
	e.close()
	f = open(filename_r)
	for line in f:
		l = line.strip().split('\t')
		giventaxid = l[0]
		taxids = find_taxids(giventaxid)
		if taxids:# if taxids is not an empty list
			c.execute("INSERT INTO BACT_DB(GIVENTAXID, GENUSTAXID, SPECIESTAXID, DBNAME) VALUES (?, ?, ?, ?);", (int(giventaxid), int(taxids[0]), int(taxids[1]), "REFSEQ"))
			conn.commit()
	f.close()

def process_file_patric():
	e = open("error_taxids.txt", "a")
        e.writelines("PATRIC:\n")
        e.close()
	f = open(filename_p)
        for line in f:
                l = line.strip().split('\t')
                giventaxid = l[0]
                taxids = find_taxids(giventaxid)
		if taxids:
	                c.execute("INSERT INTO BACT_DB(GIVENTAXID, GENUSTAXID, SPECIESTAXID, DBNAME) VALUES (?, ?, ?, ?);", (int(giventaxid), int(taxids[0]), int(taxids[1]), "PATRIC"))
        	        conn.commit()
	f.close()

def process_file_ensembl():
	e = open("error_taxids.txt", "a")
        e.write("Ensembl:\n")
        e.close()
        f = open(filename_e)
        for line in f:
                l = line.strip().split('\t')
                giventaxid = l[0]
                taxids = find_taxids(giventaxid)
		if taxids:
	                c.execute("INSERT INTO BACT_DB(GIVENTAXID, GENUSTAXID, SPECIESTAXID, DBNAME) VALUES (?, ?, ?, ?);", (int(giventaxid), int(taxids[0]), int(taxids[1]), "ENSEMBL"))
        	        conn.commit()
        f.close()


# MAIN FUNCTION ---------------------------------------------------------------------------------------------------------------------------------------------------

f = open("error_taxids.txt", "w")
f.write("these are all the taxids that threw value errors when trying to get the lineage:\n")
f.close()

create_sql_database()

process_file_refseq()

process_file_patric()

process_file_ensembl()

# close things
c.close()
conn.close()
