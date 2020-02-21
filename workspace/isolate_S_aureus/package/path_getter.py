#!/bin/env python

# BOILER PLATE -----------------------------------------------------------------------
import sqlite3
import pandas as pd

# load sql databases

datab = sqlite3.connect('/u/home/c/cloeffle/scratch/sql/new_bacteria_stats.db')

sql_table_PATRIC = pd.read_sql_query("SELECT FILEPATH FROM SPECIESDB WHERE DBNAME = 'PATRIC';", datab)
sql_table_REFSEQ = pd.read_sql_query("SELECT FILEPATH FROM SPECIESDB WHERE DBNAME = 'REFSEQ';", datab)
sql_table_ENSEMBL = pd.read_sql_query("SELECT FILEPATH FROM SPECIESDB WHERE DBNAME = 'ENSEMBL';", datab)

# load text file generated from parent bash script

gathered_metadata = open("first_step.txt")


# create text file of all filepaths

file_locations = open("file_locations.txt", "w")


# FUNCTIONS --------------------------------------------------------------------------


# MAIN FUNCTION ----------------------------------------------------------------------

# PART 1 get all the filepaths

# put all filepaths from sql into a list

all_file_getters = []
DB = {}
last = ""
for line in gathered_metadata:
	l = line.strip().split(',')
	all_file_getters.append(l[1]) # list appends to the end
	current = l[0]
	if not current == last:
		DB[current] = [len(all_file_getters) - 1] # -1 for 0 based indexing
		last = current


# put all file locations into ther respective list by database name

all_filepaths_PATRIC = []
for index, ROW in sql_table_PATRIC.iterrows():
	all_filepaths_PATRIC.append(ROW["FILEPATH"])

all_filepaths_REFSEQ = []
for index, ROW in sql_table_REFSEQ.iterrows():
        all_filepaths_REFSEQ.append(ROW["FILEPATH"])

all_filepaths_ENSEMBL = []
for index, ROW in sql_table_ENSEMBL.iterrows():
        all_filepaths_ENSEMBL.append(ROW["FILEPATH"])


# find all the wanted file paths and put it into a txt file called file_locations.txt
index = 0
while index < len(all_file_getters): 
	substring = all_file_getters[index]
	if index < DB["REFSEQ"][0]: # refseq comes after patric
		hold = [i for i in all_filepaths_PATRIC if substring in i]
		if hold:
			file_locations.write(hold[0] + "\n")
	elif index < DB["ENSEMBL"][0]: # Ensembl comes after refseq
                hold = [i for i in all_filepaths_REFSEQ if substring in i]
                if hold:
                        file_locations.write(hold[0] + "\n")
	else: # ensembl is last on the list
		hold = [i for i in all_filepaths_ENSEMBL if substring in i]
		if hold:
			file_locations.write(hold[0] + "\n")
	index += 1

# CLOSE ------------------------------------------------------------------------------

datab.close()

gathered_metadata.close()

file_locations.close()
