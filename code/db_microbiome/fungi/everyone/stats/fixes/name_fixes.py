#!/usr/bin/env python

import sqlite3
import pandas as pd

db = sqlite3.connect("/u/home/c/cloeffle/scratch/sql/fungi.db")


hold = pd.read_sql_query("SELECT FILENAME FROM FUNGI_DB WHERE DBNAME='FUNGIDB';", db)


# RhodotJ31_1_AssemblyScaffolds_Repeatmasked.fasta.gz
# Zymps1_AssemblyScaffolds_Repeatmasked.fasta.gz


for index, row in hold.iterrows(): 
	path = row['FILENAME']
	name = path[41:].strip()
	name = name + '.gz'
	#print(name)
	db.execute("UPDATE FUNGI_DB SET FILENAME=? WHERE FILENAME=?;", (name, path))
	db.commit()

db.close()
#/u/home/a/akarlsbe/scratch/fungi/1K/
#/u/home/a/akarlsbe/scratch/fungi/FUNGIDB/	
