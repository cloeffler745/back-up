# This function takes in 3 inputs:
# (1) The species.txt file downloaded from the ensembl website
# (2) The list of filenames in the directory
# (3) the path to the sql database (.db) where everything is stored


# BOILER PLATE -----------------------------------------------------------------------------------------------------------------------
import string
import sys
import sqlite3
import pandas as pd

database = sys.argv[3]

db = sqlite3.connect(database)
ensembl_db = pd.read_sql_query("SELECT * FROM DB_TABLE WHERE DBNAME='ENSEMBLE';", db)


# FUNCTIONS --------------------------------------------------------------------------------------------------------------------------

# This function takes the csv file from the ensembl website and makes a list of lists.
#  The sub-list has two elements, [taxID, filename]
# NOTE: the filename is constructed from parts of the row. Most of the time, this creates the actual filename found
# in the database.

# Current function limits to EnsemblBacteria lines (via if statement)


def make_ensmebl_taxid_table(filename):
	# Start by pulling the lines from the file
	h = open(filename)
	work_space = []
	for l in h:
		line = l.strip().split("\t")
		# Want taxID and then construct the filename from other parts of the line
		if not [line[3], str(string.capwords(line[1], " ") + "." + line[4].replace(" ", "_") + ".dna.toplevel.fa.gz")] in work_space and not line[0][0] == "#" and line[2] == "EnsemblFungi":
			work_space += [[line[3], str(string.capwords(line[1], " ") + "." + line[4].replace(" ", "_") + ".dna.toplevel.fa.gz")]]
	h.close()
	# fix some of the smaller text issue with the filename
	for i in work_space:
		i[1] = i[1].replace(" ", "_")
		i[1] = i[1].replace("#", "_")
		i[1] = i[1].replace("(GCA", "_gca")
		i[1] = i[1].replace("/", "_")
	return work_space




# Takes in a file of filenames
# Takes in list of list made in previous function work_space =[... [taxid, filename]...]
# match taxid to filenames by comparing filenames in both lists
# Will use alternate part of filename for matching remaining files 
# returns list of lists [taxid, filename] for files that successfully recieved a taxid 
# returns a list of filenames that are present in the directory, but did not recieve a taxid

def match_taxid_filename(filename, work_space):
	# First get the list of filenames
	h = open(filename)
	remaining = []
	for i in h:
		name = i.strip()
		remaining += [name]
	h.close()

	# Next run the comparison
	matched = {}
	for i in work_space:
		if i[1] in remaining:
			matched[i[1]] = [i[0]]
			remaining.remove(i[1])
	
	# try to match up the beginning of the filenames with the beginnings of the remaining filenames
	if remaining:# if there are remaining unmatched entries (remaining is not empty)
		i = 0
		for b in work_space:
			taxid = b[0]
			first = b[1].split(".")[0]
			filen = [s for s in remaining if first in s]
			if not filen: # if no match is found, skip to next value
				continue
			matched[filen[0]] = [taxid]
			i +=1
		if not i == len(remaining): 
			print("THERE ARE FILENAMES THAT DID NOT GET MATCHED WITH TAXIDS")
	return matched

# isolates the filename from the filepath
def path_strip(filepath): 
	filepath = filepath[42:] 
	return filepath
# /u/home/a/akarlsbe/scratch/fungi/ENSEMBLE/


# MAIN FUNCTION ------------------------------------------------------------------------------------------------------------------------

# The variables, specifically the filename for the ensembl csv file from ensembl website
filename = sys.argv[1] # from website
files = sys.argv[2] # actual list of filenames (found in the directory)

# Get a list of lists with the taxID (in position 0) and the most probable filename (in position 1)
taxid_constructed_filenames = make_ensmebl_taxid_table(filename)

# Match up the taxids with the actual filenames.
new_table = match_taxid_filename(files, taxid_constructed_filenames)

# find matched taxid entries by filename
# delete database entries that are not in the updates
# make matched and updates lists

#for index, row in ensembl_db.iterrows():
#	filename = path_strip(row['FILEPATH'])
	


db.close()





