# BOILER PLATE ------------------------------------------------------------------------------------------------------------

# expected inputs: 
# (1) SQL database name (.db)

import sys
import sqlite3
import pandas as pd
from ete3 import NCBITaxa
ncbi_taxa = NCBITaxa()

database = sys.argv[1]

db = sqlite3.connect(database)
db_all = pd.read_sql_query("SELECT * FROM BACT_DB WHERE GENUSTAXID IS NULL;", db)

# FUNCTIONS ---------------------------------------------------------------------------------------------------------------


# get the lineage by taxid and by rank of lineage taxids, return as two separate lists
def get_both_lineages(taxid):		  
	try: 
		lineage = ncbi_taxa.get_lineage(taxid) # get taxid lineage
	except ValueError:
		print("ValueError occurred: taxID could not get passed lineage: " + str(taxid))
		return [], []
	except sqlite3.OperationalError:
		print("OperationalError occurred: taxID could not get passed lineage: " + str(taxid))
		return [], []
	else:
		# create list of ranks for the lineage taxids
		lin_rank = []
		for i in lineage: 
			lin_rank.append(ncbi_taxa.get_rank([i])[i])
		return lineage, lin_rank


# The next function is a little long and complicated, future updates should look into simplifying

# Will be used to get taxids and scientific names for the strain, species, and genus levels that are
# returned as an 7-element list in the form: 
# [ STRAINTAXID,  STRAINNAME,  SPECIESTAXID,  SPECIESNAME,	GENUSTAXID,  GENUSNAME,  FILENAME]

# if there is a problem, function returns an empty list is returned and the update_only entry is moved 
# into manual_handle for later possibly with lineage information

# START SUPER LONGER FUNCTION vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
def get_ids_and_make_entry(taxid, other, n, filename):

	given_id = taxid
	l_i, l_r = get_both_lineages(taxid) # returns empty list if error is thrown
	
	# check if lineage lists are empty 
	if not l_i or not l_r:
		other.append([taxid,filename]) # ...take advantage of pass by object reference and put entry into manual_handle
		return []

	# if lineage lists are not empty
	# check if the most specific rank (ie. lowest) is above the genus level
	if l_r[-1] in n:# if lowest rank family or above...
		return ["0", "", "0", "", "0", "", filename, str(given_id)] # ... provide simple entry for database
	
	# if there is a rank at genus or below

	# check if there is a genus rank
	if "genus" in l_r: # yes genus- set genus name and taxid variables
		# check if species is a rank
		if "species" in l_r: # yes species - set species name and taxid variables
			spec_place = l_r.index("species")
			spec_id = l_i[spec_place]
			spec_name = ncbi_taxa.get_taxid_translator([spec_id])[spec_id]
			genus_place = l_r.index("genus")
			genus_id = l_i[genus_place]
			genus_name = ncbi_taxa.get_taxid_translator([genus_id])[genus_id]
		else: # no species - put entry and lineage information into manual_handle
			other.append([l_i, l_r, [filename]])
			return []
	else: # no genus - put entry and lineage information into manual_handle
		other.append([l_i, l_r, [filename]])
		return []

	# check if there is a strain rank (ie. a rank more specific than species)
	if spec_place == (len(l_r) - 1): # if species is the lowest rank, then set strain information to be empty 
		strain_id = "0" 
		strain_name = ""
	else: # if there is a rank below species, call it strain and set the strain name and taxid variables
		strain_id = taxid
		strain_name = ncbi_taxa.get_taxid_translator([taxid])[taxid]
	
	# construct a list of all the taxid, name, and filename information and return it
	return [strain_id, strain_name, spec_id, spec_name, genus_id, genus_name, filename, given_id]
# END SUPER LONG FUNCTION ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


# assumes that there is no explicitly defined genus taxid
# finds a taxid that will can serve as the genus and return it.
# This is an inclusive program. We get as close to more inclusive ranks as we can (while also not straying too far from species if possible)
def get_genus(taxid):
	taxid = int(taxid)
	og_taxid = int(taxid)
	name = ncbi_taxa.get_taxid_translator([taxid])[taxid]
	rank = ncbi_taxa.get_rank([taxid])[taxid]
	lineage = ncbi_taxa.get_lineage(taxid)
	nope = ['subfamily', 'family', 'suborder', 'order', 'subclass', 'class', 'subphylum', 'phylum', 'subkingdom', 'kingdom', 'superkingdom'] # These levels are too far
	no_rank_count = 0
	wild_spec_appears = False
	while(rank == 'species' or rank == 'species group' or rank == 'no rank'):
		if wild_spec_appears: # don't want to get too far away from species
			no_rank_count += 1
		if rank == 'species':
			wild_spec_appears = True
		if ncbi_taxa.get_rank([lineage[-2]])[lineage[-2]] in nope: #if lineage passes genus, stop
			break
		if no_rank_count == 2:
			break
		taxid = lineage[-2] # move to the next id
		lineage = ncbi_taxa.get_lineage(taxid) #update the lineage
		name = ncbi_taxa.get_taxid_translator([taxid])[taxid]
		rank = ncbi_taxa.get_rank([taxid])[taxid]
	if og_taxid == taxid: # there is no rank that can be interpreted as genus
		return ["0", ""]
	return [taxid, name]




# MAIN FUNCTION -----------------------------------------------------------------------------------------------------------
# these taxonomy levels are above genus
nope = ['subfamily', 'family', 'suborder', 'order', 'subclass', 'class', 'subphylum', 'phylum', 'subkingdom', 'kingdom']

special_handle = []

for index, row in db_all.iterrows():
	taxid = int(row["GIVENTAXID"])
	filename = str(row["FILENAME"])
	new_entry = get_ids_and_make_entry(taxid, special_handle, nope, filename) # get all the information to make a row in database
	if new_entry: # if the value is not empty insert information as a new row into the current database
		db.execute("UPDATE BACT_DB SET STRAINTAXID = ?, STRAINNAME = ?, SPECIESTAXID = ?, SPECIESNAME = ?, GENUSTAXID = ?, GENUSNAME = ?, GIVENTAXID = ? WHERE FILENAME = ?;", (new_entry[0], new_entry[1], new_entry[2], new_entry[3], new_entry[4], new_entry[5], new_entry[7], new_entry[6]))
		db.commit()

# handle the less straightforward cases
for i in special_handle: 
	# is there a species rank?
	strain_id = "0"
	strain_name = ""
	spec_id = "0"
	spec_name = ""

	if "species" in i[1]: # yes - set species name and taxid
		spec_id = i[0][i[1].index("species")]
		spec_name = ncbi_taxa.get_taxid_translator([spec_id])[spec_id]
		if spec_id < (len(i[1])-1): # is there a level more specific than species
			strain_id = str(i[0][-1])
			strain_name = ncbi_taxa.get_taxid_translator([strain_id])[strain_id]
		
	# is there a genus rank?
	if "genus" in i[1]: # yes - set genus name and taxid
		genus_id = i[0][i[1].index("genus")]
		genus_name = ncbi_taxa.get_taxid_translator([genus_id])[genus_id]
	else: # no - run get genus function
		genus_info = get_genus(i[0][-1])
		genus_id = genus_info[0]
		genus_name = genus_info[1]

	entry = [int(strain_id), strain_name, int(spec_id), spec_name, int(genus_id), genus_name, i[2][0]] # last entry is filename
#	  print(entry) # check, when debugging, that everything looks good
	
	# insert into the database
	db.execute("UPDATE BACT_DB SET STRAINTAXID=?, STRAINNAME=?, SPECIESTAXID=?, SPECIESNAME=?, GENUSTAXID=?, GENUSNAME=? WHERE FILENAME=?;", (entry[0], entry[1], entry[2], entry[3], entry[4], entry[5], entry[6]))
	db.commit()


# CLOSE THINGS ------------------------------------------------------------------------------------------------------------
db.close()

