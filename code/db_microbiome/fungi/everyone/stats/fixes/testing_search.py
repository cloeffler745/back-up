import re


def is_mitochnondria(category):
	category = category.lower()
        if category == 'mitochondri' or category == 'mt dna':
                return True
        else:
                return False


def is_plasmid(category):
	category = category.lower()
        if category == 'plasmid':
                return True
        else:
                return False


def is_contig(category):
	category = category.lower()
        if category == 'contig' or category == 'scaffold' or category == 'partial' or category == 'supercont' or  category == 'scf' or category == 'unitig_' or category == 'cont' or category == 'ctg' or category == '_sf_' or category == 'nw_' or category == 'nt_':
        	return True
        else:
                return False

def is_chromosome(category):
	category = category.lower()
        if category == 'chromosome' or category == 'complete' or category == 'nc_':
                return True
        else:
                return False



here = [">Mt dna sdhsajkdhgsagdsaj contig", "help complete doop", "supercontig_2564", "ctg55754"]

for line in here:
	dnaCategories = re.findall(r"plasmid|contig|scaffold|chromosome|\bcomplete\b|NC_|\bpartial\b|ctg|supercont|scf|tig_|cont[0-9]|mitochondri|chr|_sf_|NW_|NT_|\bmt dna", line, re.I)
	print(dnaCategories)
	for i in dnaCategories:
		if is_mitochnondria(i):
			print(i + " is mitochondria")
		elif is_contig(i):
			print(i + " is contig")
		elif is_chromosome(i): 
			print(i + " is chromosome")
		else: 
			print(i + " IS NOTHING NOTHING NOTHING NOTHING NOTHING NOTHING NOTHING NOTHING NOTHING NOTHING NOTHING")
