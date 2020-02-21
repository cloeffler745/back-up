#!/usr/bin/env python

import sqlite3
import pandas as pd

move_from = sqlite3.connect("/u/home/c/cloeffle/scratch/sql/bacteria_data.db")

move_to = sqlite3.connect("/u/home/c/cloeffle/scratch/sql/new_bacteria_stats.db")
cur = move_to.cursor()

frame = pd.read_sql_query("SELECT FILENAME, FILEPATH, chromosome_count, avg_length_chromosomes, max_length_chromosomes, min_length_chromosomes, contig_count, avg_length_contig, max_length_contig, min_length_contig, plasmid_count, avg_length_plasmids, max_length_plasmids, min_length_plasmids FROM SPECIESDB WHERE DBNAME='ENSEMBL'", move_from)

for index, ROW in frame.iterrows(): 
	cur.execute ("INSERT INTO SPECIESDB (FILENAME, FILEPATH, chromosome_count, avg_length_chromosomes, max_length_chromosomes, min_length_chromosomes, contig_count, avg_length_contig, max_length_contig, min_length_contig, plasmid_count, avg_length_plasmids, max_length_plasmids, min_length_plasmids, DBNAME) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", (ROW["FILENAME"], ROW["FILEPATH"], ROW["chromosome_count"], ROW["avg_length_chromosomes"], ROW["max_length_chromosomes"], ROW["min_length_chromosomes"], ROW["contig_count"], ROW["avg_length_contig"], ROW["max_length_contig"], ROW["min_length_contig"], ROW["plasmid_count"], ROW["avg_length_plasmids"], ROW["max_length_plasmids"], ROW["min_length_plasmids"], "ENSEMBL"))
	move_to.commit()

move_from.close()
cur.close()
move_to.close()
