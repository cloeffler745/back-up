import sys

# take in the list of file names and make them into a single usable variable
list_of_names = sys.argv[1]

f = open(list_of_names)

hold_please = []

for l in f: 
	hold_please += [l.strip()]

