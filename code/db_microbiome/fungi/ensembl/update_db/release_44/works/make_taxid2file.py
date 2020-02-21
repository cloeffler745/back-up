# BOILER PLATE -----------------------------------------------------------------------------------------------------------------------
import string
import sys

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
# Takes in list of list made in previous function [taxid, filename]
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
	matched = []
	for i in work_space:
		if i[1] in remaining:
			matched += [i]
			remaining.remove(i[1])

	# remove matched entries from work_space
	for r in matched:
		if r in work_space:
			work_space.remove(r)
	# try to match up the beginning of the filenames with the beginnings of the remaining filenames
	# alternate method for matching taxids to filenames
	if remaining:# if there are remaining unmatched entries (remaining is not empty)
		i = 0
		for b in work_space:
			taxid = b[0]
			first = b[1].split(".")[0]
			filen = [s for s in remaining if first in s]
			matched += [[taxid, filen[0]]]
			i+=1
		print(i)
	return matched, remaining

# create a csv file from a list of lists.
def create_csv(list_in):
        f = open("taxID_filename.txt", "w")
        for i in list_in:
                f.write(",".join(i) + "\n")
        f.close()


# MAIN FUNCTION ------------------------------------------------------------------------------------------------------------------------

# The variables, specifically the filename for the ensembl csv file from ensembl website
filename = sys.argv[1] # from website
files = sys.argv[2] # actual list of filenames (found in the directory)

# Get a list of lists with the taxID (in position 0) and the most probable filename (in position 1)
taxid_constructed_filenames = make_ensmebl_taxid_table(filename)

# Match up the taxids with the actual filenames.
new_table, matched_no = match_taxid_filename(files, taxid_constructed_filenames)

# Create a csv for the table, future versions will remove this option in favor of one file. 
create_csv(new_table)



