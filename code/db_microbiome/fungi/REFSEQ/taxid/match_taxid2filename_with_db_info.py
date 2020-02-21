# BOILER PLATE ----------------------------------------------------------------------------------------------------------------
import sys
import math
import sqlite3

d = sqlite3.connect("/u/home/c/cloeffle/scratch/sql/fungi.db")
db = d.cursor()

# user will need to input:
# in that order

# FUNCTIONS -------------------------------------------------------------------------------------------------------------------

# Make a dictionary out of the headers from all files
# Accession will be the key, and the filename will be the value.
def make_dict_filenames():
	f = open("filename.first_lines.txt")
	db_dict = {}
	for line in f:
		file = line.strip().split(":")[0]  # This is the filename
		acc = line.strip().split(":")[1] # This is the first line of the file
		acc = acc.split(" ")[0] # this is the accession with the ">"
		acc = acc[1:] # remove the ">" from the accession
		if acc in db_dict.keys():  # if the accession is already a key, add the extra value to the end of the list
			if not file in db_dict[acc]:
				db_dict[acc].append(file)
				print("This accession number has more than one filename: " + acc + "\n")
			else:
				continue
		else:  # create new dictionary entry
			db_dict[acc] = [file]
	f.close()
	return db_dict


# Takes in a csv formatted text file with accession in place place_acc and taxid in place place_tax in each line
# It then uses the dictionary that we made in the previous function (db_filenames) to match up to accession values
# in the csv file and get taxids for each filename. When there is a match we add [taxid, filename] to a list of lists, which we then return.
# This return value is what we use to create the text file that will be used to put taxid/filename information into the
# sql database
def match_to_make_table(place_acc, place_tax, db_filenames):
	f = open("/u/home/c/cloeffle/scratch/accession_tables/eukaryota_db_info.txt")
	new_table = []
	for line in f:
		if not bool(db_filenames): # if there are no more accession values to find, stop process
			break
		l = line.strip().split("\t")
		if not l[place_acc] in db_filenames.keys(): # if the accession is not one we are looking for, don't bother with it
			continue
		else: #WE HAVE A MATCH
			new_table.append([str(int(math.floor(float(l[place_tax])))), db_filenames[l[place_acc]][0]]) # [taxid, filename]
			del db_filenames[l[place_acc]] # remove values we have found
	f.close()
	for i in db_filenames.keys():
		print(db_filenames[i]) #print what we did not get taxids for
		print('\n')
	return new_table

def insert_into_db(data):
	for pair in data:
		db.execute("INSERT INTO TEST(GIVENTAXID, FILENAME, DBNAME) VALUES(?, ?, ?)",(pair[0], pair[1], 'NCBI'))
		d.commit()

# MAIN FUNCTION ---------------------------------------------------------------------------------------------------------------


# return format is: {Accession: [filename]}
acc_filename_dict = make_dict_filenames()

# keys = accesion value = taxid
new_table = match_to_make_table(0, 2, acc_filename_dict)

# edit the database
insert_into_db(new_table)

db.close()
d.close()
