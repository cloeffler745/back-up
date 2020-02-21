#!/usr/bin/env python
#BOILER PLATE -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

import sqlite3 
import pandas as pd

db = sqlite3.connect("/u/home/c/cloeffle/scratch/sql/fungi.db")

jgi_table = pd.read_sql_query("SELECT * FROM FUNGI_DB WHERE DBNAME='1K' AND contig_count>0;", db)
ensembl_table = pd.read_sql_query("SELECT * FROM FUNGI_DB WHERE DBNAME='ENSEMBLE' AND chromosome_count>0;", db)
ncbi_table = pd.read_sql_query("SELECT * FROM FUNGI_DB WHERE DBNAME='NCBI' AND chromosome_count>0;", db)
fungidb_table = pd.read_sql_query("SELECT * FROM FUNGI_DB WHERE DBNAME='FUNGIDB' AND chromosome_count>0;", db)


# FUNCTIONS ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# creates dictionary where every key is the most specific taxid and the value is the filepath to the reference

def table_to_dict(table):
	tax_index = {}
	for index, row in table.iterrows():
		if not row["STRAINTAXID"] == 0:
			tax_index[row["STRAINTAXID"]] = [row["FILEPATH"]]
		elif not row["SPECIESTAXID"] == 0:
			tax_index[row["SPECIESTAXID"]] = [row["FILEPATH"]]
		elif not row["GENUSTAXID"] == 0:
			tax_index[row["GENUSTAXID"]] = [row["FILEPATH"]]
		else: #use GIVENTAXID
			tax_index[row["GIVENTAXID"]] = [row["FILEPATH"]]
	return tax_index



# finds where keys match between one dictionary to multiple others. Matches create a list whose entries are paired values from two dictionarys. 
# Returns multiple lists of lists of these matched entires. One for each pair of dictionaries being compared.   

def match_taxids(db_contigs, db_chr1, db_chr2, db_chr3): 
	match_to_1 = []
	match_to_2 = []
	match_to_3 = []
	for i in db_contigs.keys():
		if i in db_chr1.keys():
			match_to_1.append([db_chr1[i][0], db_contigs[i][0]]) # [filepath_chr1, filepath_contig]
		if i in db_chr2.keys():
			match_to_2.append([db_chr2[i][0], db_contigs[i][0]]) # [filepath_chr2, filepath_contig]
		if i in db_chr3.keys():
			match_to_3.append([db_chr3[i][0], db_contigs[i][0]]) # [filepath_chr3, filepath_contig]
	return match_to_1, match_to_2, match_to_3



# MAIN FUNCTION ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# create dictionaries where key = taxid and value = filepath

jgi_index = table_to_dict(jgi_table)
ensembl_index = table_to_dict(ensembl_table)
ncbi_index = table_to_dict(ncbi_table)
fungidb_index = table_to_dict(fungidb_table)

#print(len(jgi_index))
#print("\n")
#print(len(ensembl_index))
#print("\n")
#print(len(ncbi_index))
#print("\n")
#print(len(fungidb_index))
#print("\n")


# find where jgi shares taxids with the three other databases

ensembl_jgi, ncbi_jgi, fungidb_jgi = match_taxids(jgi_index, ensembl_index, ncbi_index, fungidb_index)


print(len(ensembl_jgi))
print("\n\n")
print(len(ncbi_jgi))
print("\n\n")
print(len(fungidb_jgi))
print("\n\n")

f = open("ensembl_jgi1k.txt", "w")
for i in ensembl_jgi:
	f.write("\t".join(i) + "\n")
f.close()

f = open("ncbi_jgi1k.txt", "w")
for i in ncbi_jgi:
        f.write("\t".join(i) + "\n")
f.close()

f = open("fungidb_jgi1k.txt", "w")
for i in fungidb_jgi:
        f.write("\t".join(i) + "\n")
f.close()


# CLOSE THINGS -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

db.close()






