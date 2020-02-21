#!/usr/bin/env python

import sqlite3
import pandas as pd

db = sqlite3.connect("/u/home/c/cloeffle/scratch/sql/fungi.db")


hold = pd.read_sql_query("SELECT FILENAME FROM FUNGI_DB WHERE DBNAME='1K';", db)


# RhodotJ31_1_AssemblyScaffolds_Repeatmasked.fasta.gz
# Zymps1_AssemblyScaffolds_Repeatmasked.fasta.gz


for index, row in hold.iterrows(): 
	name = row['FILENAME']
	if not name[-3:]=='.gz':
		n_name = name + '.gz'
		#print(name[-3:])
		db.execute("UPDATE FUNGI_DB SET FILENAME=? WHERE FILENAME=?;", (n_name, name))
		db.commit()

db.close()
#/u/home/a/akarlsbe/scratch/fungi/1K/
#/u/home/a/akarlsbe/scratch/fungi/FUNGIDB/	
