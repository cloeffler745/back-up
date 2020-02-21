#!/bin/env python

# BOILER PLATE -----------------------------------------------------------------------
import sqlite3
import pandas as pd

# load sql database

datab = sqlite3.connect('/u/home/c/cloeffle/scratch/sql/new_bacteria_stats.db')
cur = datab.cursor()


# get the file names

sql_table_PATRIC = pd.read_sql_query("SELECT FILENAME FROM SPECIESDB WHERE DBNAME = 'PATRIC';", datab)
sql_table_REFSEQ = pd.read_sql_query("SELECT FILENAME FROM SPECIESDB WHERE DBNAME = 'REFSEQ';", datab)
sql_table_ENSEMBL = pd.read_sql_query("SELECT FILENAME FROM SPECIESDB WHERE DBNAME = 'ENSEMBL';", datab)


# open file with metadata

gathered_metadata = open("select_metadata.txt")


# MAIN FUNCTION ----------------------------------------------------------------------

# Get filepaths from sql database

all_filenames_PATRIC = []
for index, ROW in sql_table_PATRIC.iterrows():
        all_filenames_PATRIC.append(ROW["FILENAME"])

all_filenames_REFSEQ = []
for index, ROW in sql_table_REFSEQ.iterrows():
        all_filenames_REFSEQ.append(ROW["FILENAME"])

all_filenames_ENSEMBL = []
for index, ROW in sql_table_ENSEMBL.iterrows():
        all_filenames_ENSEMBL.append(ROW["FILENAME"])



# put all filepaths from sql into a dictionary linked with the giventaxid

all_file_getters = []
DB = {}
last = ""
for line in gathered_metadata:
        l = line.strip().split(',')
        all_file_getters.append([l[1],l[2]]) # list appends to the end
        current = l[0]
        if not current == last:
                DB[current] = [len(all_file_getters) - 1] # -1 for 0 based indexing
                last = current



# match all the taxids to the file names, put into sql database
# the index of those that do not get matched get put into file "leftovers.txt"

the_remains = open("leftovers.txt", "w")
index = 0
for sublist in all_file_getters:
        substring = sublist[0] # file_getter
        taxid = sublist[1] # taxid
        match = False

        if index < DB["REFSEQ"][0]: # refseq comes after patric

                # fix the too many elements in hold error 

                substring = substring + ".fna"

                hold = [i for i in all_filenames_PATRIC if substring in i]
                if hold:
                        match = True
                        cur.execute("UPDATE SPECIESDB SET GIVENTAXID = ? WHERE FILENAME = ?;", (taxid, hold[0]))
                        datab.commit()
        
        elif index < DB["ENSEMBL"][0]: # Ensembl comes after refseq
                hold = [i for i in all_filenames_REFSEQ if substring in i]
                if hold:
                        match = True
                        cur.execute("UPDATE SPECIESDB SET GIVENTAXID = ? WHERE FILENAME = ?;", (taxid, hold[0]))
                        datab.commit()
        
        else: # ensembl is last on the list
                
                # correct the # error 

                if "#" in substring:
                        substring = substring.replace('#', '_', 1)

                hold = [i for i in all_filenames_ENSEMBL if substring in i]
                if hold:
                        match = True
                        cur.execute("UPDATE SPECIESDB SET GIVENTAXID = ? WHERE FILENAME = ?;", (taxid, hold[0]))
                        datab.commit()
        index += 1
        if not match:
                the_remains.write(str(index) + "\n") # after index+=1 for 1 based indexing.
the_remains.close()

# CLOSE ------------------------------------------------------------------------------

cur.close()
datab.close()

gathered_metadata.close()
