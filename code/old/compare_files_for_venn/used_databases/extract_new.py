# BOILER PLATE ---------------------------------------------------
import sys

# FUNCTIONS -------------------------------------------------------

# Takes the bash file and creates a list where every entry is a
# line of that file with its contents parsed by tabs.
# NOTE: this function acts like extract.py as the only 
# lines that make it into the list_of_lists at the end are the
# first lines of every cluster of comparisons run in blastn


def file_to_list_of_lists(filename):
    f = open(filename)
    list_of_lists = []
    for l in f:
        line = l.strip().split("\t")
        if not line[0][0] == "#":
            list_of_lists += [list(line)]
    f.close()
    
    # Only consider the top line of every cluster of entries
    data = []
    seen = []

    for i in list_of_lists:
        if not i[0] in seen:
            seen += [i[0]]
            data += [i]
    # returns the list holding only the top matches
    # We are considering these to be the best matches
    return data


# This function takes in a list that  needs to
# be formatted:
# [query id, subject id, % identity, query length, subject 
# length, alignment length, query alignment start, 
# subject alignment start, mismatches]
# Then it takes the % identity, query length, subject 
# length, and alignment length and plugs them into 
# a function that calculates the adjusted percentage.
# This is the value that is returned.


def adjusted_function(list_of_numbers):
    # set up variables
    id = list_of_numbers[2]
    qlen = list_of_numbers[3]
    slen = list_of_numbers[4]
    alen = list_of_numbers[5]

    # calculate
    adj = ((float(id)/float(100)) * float(alen)) / float(max(qlen, slen))

    return adj * float(100)

# Get best matches from a list structured in the way it is in 
# this code (specifically from blast files returned from 
# running blastn)

def get_best_macthes(list_of_lists):

    best = open("get_best_matches.txt", "w")
    best.write("#  Fields: query id, subject id, adjusted % identity, query length, subject length, alignment length, query alignment start, subject alignment start, mismatches \n")
    for i in list_of_lists:
        best.write("\t".join(i) + "\n")

    best.close()
    return



#create a csv file from a list of lists


def create_csv(list):
    f = open("new_blast.txt", "w")
    f.write("#  Fields: query id, subject id, adjusted % identity, query length, subject length, alignment length, query alignment start, subject alignment start, mismatches\n")
    for i in list:
        f.write("\t".join(i) + "\n")
    f.close()


# MAIN FUNCTION --------------------------------------------------

# get the variables
file = sys.argv[1]

# Make the text file into a usable variable
blast_rows = file_to_list_of_lists(file)

# Replace %_identity with adjusted_identity in the list_of_lists 
# here called blast_rows
for i in blast_rows:
    i[2] = str(adjusted_function(i))

# make a new file named "get_best_matches_new.txt", with the adjusted_id
# instead of the percent_id it had before
# also only the best lines from each section are here.

get_best_macthes(blast_rows)


# create_csv(blast_rows)
