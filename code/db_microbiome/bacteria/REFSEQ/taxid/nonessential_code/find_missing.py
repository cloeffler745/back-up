# BOILER PLATE -----------------------------------------------------------------------------------------------------------------------
import string
import sys

# FUNCTIONS --------------------------------------------------------------------------------------------------------------------------
# Takes every line in a file and makes it an element of a list
def make_list_from_document(filename):
	f = open(filename)
	list = []
	for l in f:
		line = l.strip()
		list += [line]
	f.close()
	return list

# Takes every line in a file, seperates each part of the line by PARSE_BY, and makes that list an element of a list_of_lists
def make_list_and_parse_lines(filename, parse_by):
	f = open(filename)
	list_of_lists = []
	for l in f:
		line = l.strip().split(parse_by)
		list_of_lists.append(line[1])
	f.close()
	return list_of_lists

# MAIN FUNCTION -----------------------------------------------------------------------

filenames = sys.argv[1]
with_taxids = sys.argv[2]

flist = make_list_from_document(filenames)
wtlist = make_list_and_parse_lines(with_taxids, ",")

f = open("missing_taxids.txt", "w")

for i in flist:
	if not i in wtlist: 
		f.write(i + "\n")

f.close()
