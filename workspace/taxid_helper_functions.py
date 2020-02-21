from ete3 import NCBITaxa
ncbi_taxa = NCBITaxa()


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



# Will be used to get taxids and scientific names for the species and genus levels that are
# returned as an 2-element list in the form: 
# [ GENUSTAXID, SPECIESTAXID ]

# if there is a problem, function returns an empty list is returned and the update_only entry is moved 
# into manual_handle for later possibly with lineage information

def get_ids(taxid, other, n):

	given_id = taxid
	l_i, l_r = get_both_lineages(taxid) # returns empty list if error is thrown
	
	# check if lineage lists are empty 
	if not l_i or not l_r:
		e = open("error_taxids.txt", "a")
		write_this = str(taxid) + "\n"
		e.write(write_this)
		e.close()
		return []

	# if lineage lists are not empty
	# check if the most specific rank (ie. lowest) is above the genus level
	if l_r[-1] in n:# if lowest rank family or above...
		return ["0", "0"] # ...provide genus and species taxids as 0's
	
	# if there is a rank at genus or below

	# check if there is a genus rank
	if "genus" in l_r: # yes genus
		# check if species is a rank
		if "species" in l_r: # yes species - set species and genus taxid
			spec_place = l_r.index("species")
			spec_id = l_i[spec_place]
			genus_place = l_r.index("genus")
			genus_id = l_i[genus_place]
		else: # no species - put entry and lineage information into manual_handle
			other.append(l_i)
			other.append(l_r)
			return []
	else: # no genus - put entry and lineage information into manual_handle
		other.append(l_i)
		other.append(l_r)
		return []
	
	# construct a list of all the taxid, name, and filename information and return it
	return [genus_id, spec_id]




# assumes that there is no explicitly defined genus taxid
# finds a taxid that will can serve as the genus and return it.
# This is an inclusive program. We get as close to more inclusive ranks as we can (while also not straying too far from species if possible)

def get_genus(taxid, n):
	taxid = int(taxid)
	og_taxid = int(taxid)
	name = ncbi_taxa.get_taxid_translator([taxid])[taxid]
	rank = ncbi_taxa.get_rank([taxid])[taxid]
	lineage = ncbi_taxa.get_lineage(taxid)
	no_rank_count = 0
	wild_spec_appears = False
	while(rank == 'species' or rank == 'species group' or rank == 'no rank'):
		if not len(lineage) > 1: # all ranks have classification 'no rank'
			return "0"
		if wild_spec_appears: # don't want to get too far away from species
			no_rank_count += 1
		if rank == 'species':
			wild_spec_appears = True
		if ncbi_taxa.get_rank([lineage[-2]])[lineage[-2]] in n: #if lineage passes genus, stop
			break
		if no_rank_count == 2:
			break
		taxid = lineage[-2] # move to the next id
		lineage = ncbi_taxa.get_lineage(taxid) #update the lineage
		rank = ncbi_taxa.get_rank([taxid])[taxid]
	if og_taxid == taxid: # there is no rank that can be interpreted as genus
		return "0"
	return taxid



