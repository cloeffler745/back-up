#!/bin/env python

# BOILER PLATE ---------------------------------------------------------------------------------------------

import sqlite3
import pandas as pd
# import ete3 
from ete3 import NCBITaxa as ncbi_taxa


# Be sure that the sql database accepting the taxids have the columns GENUSTAXID and SPECIESTAXID
# ALTER TABLE SPECIESDB ADD OUR_STRAINTAXID INT;
datab_stats = sqlite3.connect("/u/home/c/cloeffle/scratch/sql/new_bacteria_stats.db")
cur = datab_stats.cursor()

datab_taxid = sqlite3.connect("/u/home/c/cloeffle/scratch/sql/bact_data_from_summarys.db")
boxes_of_taxids = pd.read_sql_query("SELECT DISTINCT GIVENTAXID, GENUSTAXID, SPECIESTAXID FROM BACT_DB;", datab_taxid)


# FUNCTION -------------------------------------------------------------------------------------------------


# MAIN FUNCTION --------------------------------------------------------------------------------------------

for index, row in boxes_of_taxids.iterrows():
	given = row["GIVENTAXID"]
	genus = row["GENUSTAXID"]
	species = row["SPECIESTAXID"]
#	lineage_taxid = "|".join(ncbi_taxa.get_lineage(given))
#	lineage_name = "|".join(ncbi_taxa.get_name_translator(n))
	strain = 0

	if not species == given: # if the species taxid is not the most specific rank
		if not genus == 0 and not genus == given: # if genus is known and not the most specific rank 
			strain = given

	# database is for committing
	cur.execute("UPDATE SPECIESDB SET STRAINTAXID = ?, SPECIESTAXID = ?, GENUSTAXID = ? WHERE GIVENTAXID = ?;", (strain, species, genus, given))
	datab_stats.commit()

# CLOSE ----------------------------------------------------------------------------------------------------

datab_taxid.close()

cur.close()
datab_stats.close()
