#!/bin/env python

# BOILER PLATE -----------------------------------------------------------------------


# get the files

f_line_numbers = open("leftovers.txt")

f_pick_from = open("select_metadata.txt")

f_output = open("the_remains.txt", "w")

# MAIN FUNCTION ----------------------------------------------------------------------

# get the line numbers from leftovers.txt

line_numbers = []

for line in f_line_numbers:
	line_numbers.append(int(line.strip()))


# use line_numbers to get the lines from select_metadata.txt that did not get lined up with a filename in sql

count = 1
for line in f_pick_from:
	if count in line_numbers:
		f_output.write(line)
	count += 1

# CLOSE ------------------------------------------------------------------------------

f_line_numbers.close()
f_pick_from.close()
f_output.close()

