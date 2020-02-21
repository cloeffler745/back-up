#!/bin/env python

# BOILER PLATE -----------------------------------------------------------------------
import sqlite3
import pandas as pd

# load sql database

datab = sqlite3.connect('/u/home/c/cloeffle/scratch/sql/new_bacteria_stats.db')
cur = datab.cursor()


# get the file names

sql_table_PATRIC = pd.read_sql_query("SELECT FILENAME FROM SPECIESDB WHERE DBNAME = 'PATRIC';", datab)




# MAIN FUNCTION ----------------------------------------------------------------------

all_filenames_PATRIC = []
for index, ROW in sql_table_PATRIC.iterrows():
        all_filenames_PATRIC.append(ROW["FILENAME"])


all_file_getters = [['101571.10',101571],['101571.11',101571],['101571.12',101571],['101571.18',101571]]


for sublist in all_file_getters:
        substring = sublist[0] # file_getter
        taxid = sublist[1] # taxid
        hold = [i for i in all_filenames_PATRIC if substring in i]
        print(hold[0])
        print("\n")
        print(hold)

# CLOSE ------------------------------------------------------------------------------

cur.close()
datab.close()

