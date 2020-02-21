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
db_all = pd.read_sql_query("SELECT * FROM T_BACT WHERE GENUSTAXID IS NULL;", db)

# FUNCTIONS ---------------------------------------------------------------------------------------------------------------


# Takes a list of lists and prints each list
# used in debugging
def look_at(entry):
	for i in entry: 
		print i
	return

# manually handle a taxid where taxid lineage could not be obtained using NCBITaxa
# mainly used for debugging
def handle(taxid):
	entry = []
	print("This is the taxid: " + str(taxid))
	int(taxid)
	x = input("Manually set taxid information for this entry? yes/no ")
	if x.lower() == "yes" or x.lower() == "y":
		x = input("strain id: ") or "0"
		entry.append(x)
		x = input("strain name: ") or ""
		entry.append(x)
		x = input("species id: ") or "0"
		entry.append(x)
		x = input("species name: ") or ""
		entry.append(x)
		x = input("genus id: ") or "0"
		entry.append(x)
		x = input("genus name: ") or ""
		entry.append(x)
		print("\n")
		return entry
	else:
		return []
	
	
# after the specific entries are found, will hard code desired entries for future runs of the code
# POSSIBLE FUTURE UPDATE: just ask user to get taxid lineage from NCBI site and attempt to let the code handle it
# before asking for a manual handle
def automate_handle(taxid):
	taxid = str(taxid)
	if taxid == "2511838":
		return ["0", "", "2511838", "Cortinarius aff. campbellae", "34451", "Cortinarius"]
	elif taxid == "2079947":
		return ["0", "", "2079947", "Dacrymyces tortus", "5255", "Dacrymyces"]
	elif taxid == "2512241":
		return ["0", "", "2512241", "Xylaria flabelliformis", "37991", "Xylaria"]
	else: # if not any of the above cases
		return []

	

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
# returned as an 8-element list in the form: 
# [ STRAINTAXID,  STRAINNAME,  SPECIESTAXID,  SPECIESNAME,	GENUSTAXID,  GENUSNAME,  FILENAME,	GIVENTAXID ]

# if there is a problem, function returns an empty list is returned and the update_only entry is moved 
# into manual_handle for later possibly with lineage information

# START SUPER LONGER FUNCTION vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
def get_ids_and_make_entry(taxid, other, n, filename):

	given_id = taxid
	l_i, l_r = get_both_lineages(taxid) # returns empty list if error is thrown
	
	# check if lineage lists are empty 
	if not l_i or not l_r:
		new_entry = automate_handle(taxid) # hard coding ... returns empty list if taxid not hard coded
		if not new_entry: # if this taxid throws the get_lineage function for the first time...
			try_handling = handle(taxid) # ... let the user handle it
			if not try_handling: # if the user decides not to handle...
				other.append([taxid,filename]) # ...take advantage of pass by object reference and put entry into manual_handle
				return []
			else: # if the user does handle it and returns a 6-element list...
				try_handling.append(filename) # ... append filename and ...
				try_handling.append(str(given_id)) # ... taxid given by updates_only
				return try_handling
		else: # if the information for the given taxid is hard coded 
			new_entry.append(filename) # ... append filename and ...
			new_entry.append(str(taxid)) # ... taxid given by updates_only
			return new_entry

	# if lineage lists are not empty
	# check if the most specific rank (ie. lowest) is above the genus level
	if l_r[-1] in n:# if lowest rank family or above...
		return ["0", "", "0", "", "0", "", filename, str(given_id)] # ... provide simple entry for database
	
	# if there is a rank at genus or below
	# check if there is a genus rank
	if "genus" in l_r: # yes genus- set genus name and taxid variables
		genus_place = l_r.index("genus")
		genus_id = l_i[genus_place]
		genus_name = ncbi_taxa.get_taxid_translator([genus_id])[genus_id]
	else: # no genus - put entry and lineage information into manual_handle
		other.append([l_i, l_r, [filename]])
		return []
	
	# if there is a genus rank 
	# check if there is a species rank
	if "species" in l_r: # yes species - set species name and taxid variables
		spec_place = l_r.index("species")
		spec_id = l_i[spec_place]
		spec_name = ncbi_taxa.get_taxid_translator([spec_id])[spec_id]
	else: # no species - put entry and lineage information into manual_handle
		other.append([l_i, l_r, [filename]])
		return []
	
	# if there is a species rank
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



# MAIN FUNCTION -----------------------------------------------------------------------------------------------------------
# these taxonomy levels are above genus
nope = ['subfamily', 'family', 'suborder', 'order', 'subclass', 'class', 'subphylum', 'phylum', 'subkingdom', 'kingdom']

manual_handle = []

for index, row in db_all.iterrows():
	taxid = int(row["GIVENTAXID"])
	filename = str(row["FILENAME"])
	new_entry = get_ids_and_make_entry(taxid, manual_handle, nope, filename) # get all the information to make a row in database
	if new_entry: # if the value is not empty insert information as a new row into the current database
		db.execute("UPDATE T_BACT SET STRAINTAXID = ?, STRAINNAME = ?, SPECIESTAXID = ?, SPECIESNAME = ?, GENUSTAXID = ?, GENUSNAME = ?, GIVENTAXID = ? WHERE FILENAME = ?;", (new_entry[0], new_entry[1], new_entry[2], new_entry[3], new_entry[4], new_entry[5], new_entry[7], new_entry[6]))
		db.commit()

# inserts the manual handle entries into text file for later handling
f = open("not_handled_by_code.txt", "w")
for i in manual_handle:
	i[0] = [str(num) for num in i[0]] 
	f.write("\t".join(i[0]) + "\n" + "\t".join(i[1]) + "\n" + i[2][0] + "\n\n\n")


# CLOSE THINGS ------------------------------------------------------------------------------------------------------------
db.close()
f.close()
