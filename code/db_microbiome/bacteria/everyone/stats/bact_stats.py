#!/usr/bin/env python

# Run in terminal to compile list of filepaths for unzipped gzfiles.
# ls -d "$PWD"/* >> /u/home/c/cloeffle/code/dbmicrobiome/bacteria/everyone/stats/filepaths.list

# BOILER PLATE ---------------------------------------------------------------------------------------------------------

# import sys.path.append(/u/home/c/cloeffle/code/db_microbiome/bacteria/everyone/stats/stats_helper_functions.py)
import stats_helper_functions as helper
import sqlite3
import re
import gzip
import csv
import pandas as pd
import sys
conn = sqlite3.connect('/u/home/c/cloeffle/scratch/sql/bacteria_data.db')

c = conn.cursor()

# Create the database if it does not already exist

#def create_table():
#	c.execute("CREATE TABLE IF NOT EXISTS SPECIESDB(GIVENTAXID INT, GENUSTAXID INT, GENUSNAME TEXT, SPECIESTAXID INT, SPECIESNAME TEXT, STRAINTAXID INT, STRAINNAME TEXT, DBNAME TEXT, FILEPATH TEXT, chromosome_count INT, avg_length_chromosomes INT, max_length_chromosomes INT, min_length_chromosomes INT, contig_count INT, avg_length_contig INT, max_length_contig INT, min_length_contig INT, mtDNA_count INT, avg_length_mtDNA INT, max_length_mtDNA INT, min_length_mtDNA INT, plasmid_count INT, avg_length_plasmids INT, max_length_plasmids INT, min_length_plasmids INT)")
#	conn.commit()

# RUN THIS CODE IN terminal:
# INSERT INTO SPECIESDB(GENUSNAME, SPECIESTAXID, SPECIESNAME, STRAINNAME, DBNAME, FILEPATH, chromosome_count, avg_length_chromosomes, max_length_chromosomes, min_length_chromosomes, contig_count, avg_length_contig, max_length_contig, min_length_contig, mtDNA_count, avg_length_mtDNA, max_length_mtDNA, min_length_mtDNA, plasmid_count, avg_length_plasmids, max_length_plasmids, min_length_plasmids)
# SELECT GENUSNAME, TAXID, SPECIESNAME, STRAIN, DBNAME, FILEPATH, chromosome_count, avg_length_chromosomes, max_length_chromosomes, min_length_chromosomes, contig_count, avg_length_contig, max_length_contig, min_length_contig, mtDNA_count, avg_length_mtDNA, max_length_mtDNA, min_length_mtDNA, plasmid_count, avg_length_plasmids, max_length_plasmids, min_length_plasmids
# FROM TMP;
# DROP TABLE TMP;

# FUNCTIONS TO DEAL WITH TAXIDS ========================================================================================

# Will need filepaths in later code to access each file to get statistics data.
# Make an array of filepaths
def make_array_of_file_paths():
	filesToParse = []
	filePathList = "filepaths.list"
	with open(filePathList) as f:
			for line in f:
				filesToParse.append(line)
	return  filesToParse


# parse specific file and store parameters in seqAttributes
def parse_file(filePath):
	nucleotide_count = 0
	prev_dna_type = ""
	chrom_lengths = []
	mt_lengths = []
	plasmid_lengths = []
	contig_lengths = []

	seqAttributes = {
		"FILEPATH": '',
		"FILENAME": '',
		"chromosome_count": 0,
		"avg_length_chromosomes": 0,
		"max_length_chromosomes": 0,
		"min_length_chromosomes": 0,

		"contig_count": 0,
		"avg_length_contig": 0,
		"max_length_contig": 0,
		"min_length_contig": 0,

		"mtDNA_count": 0,
		"avg_length_mtDNA": 0,
		"max_length_mtDNA": 0,
		"min_length_mtDNA": 0,

		"plasmid_count": 0,
		"avg_length_plasmids": 0,
		"max_length_plasmids": 0,
		"min_length_plasmids": 0
	}

	seqAttributes["FILEPATH"] = filePath.strip()

	# isolate fileName from filePath for finding the correct row
	fileName = re.search(r'^(.+)/([^/]+)$', filePath).group(2).strip()
	seqAttributes["FILENAME"] = fileName
	
		# open individual sequence file and determine following attributes
	with gzip.open(filePath.strip(), 'rb') as f:
		for line in f:
			# determine what type of dna is present in following sequence and increment count of sequences for dna type in file.:
			#dnaCategories = re.findall(r"Mt", line)  # where we dont ignore case for mt
			if line[0] == ">":#only look for assembly level patterns in headers
				dnaCategories = re.findall(r"plasmid|contig|scaffold|chromosome|\bcomplete\b|NC_|\bpartial\b|supercont|scfld", line, re.I)
				if not dnaCategories: # if there was nothing found in the header, assume it is contig/scaffold
					dnaCategories = ["contig"]
			else: 
				dnaCategories = [""]
			chromosome = False
			plasmid = False
			mitochondria = False
			contig = False

				# determine all categories which are marked true. loop through categories array.
			for category in dnaCategories:
				if helper.is_mitochnondria(category):
					mitochondria = True
				elif helper.is_plasmid(category):
					plasmid = True
				elif helper.is_contig(category):
					contig = True
				elif helper.is_chromosome(category):
					chromosome = True

				# mark sequence according to priority as follows. Chromosome is last bc it is used in name even when the sequence is only a contig or scaffold.
				# mark line number and compare current count of nucleotides to
			if mitochondria:
				seqAttributes["mtDNA_count"] += 1
				helper.determine_sequence_lengths(prev_dna_type, nucleotide_count, chrom_lengths, mt_lengths, plasmid_lengths, contig_lengths)
				prev_dna_type = 'mitochondria'
				nucleotide_count = 0
			elif plasmid:
				seqAttributes["plasmid_count"] += 1
				helper.determine_sequence_lengths(prev_dna_type, nucleotide_count, chrom_lengths, mt_lengths, plasmid_lengths, contig_lengths)
				prev_dna_type = 'plasmid'
				nucleotide_count = 0

			elif contig:
				seqAttributes["contig_count"] += 1
				helper.determine_sequence_lengths(prev_dna_type, nucleotide_count, chrom_lengths, mt_lengths, plasmid_lengths, contig_lengths)
				prev_dna_type = 'contig'
				nucleotide_count = 0
			elif chromosome:
				seqAttributes["chromosome_count"] += 1
				helper.determine_sequence_lengths(prev_dna_type, nucleotide_count, chrom_lengths, mt_lengths, plasmid_lengths, contig_lengths)
				prev_dna_type = 'chromosome'
				nucleotide_count = 0
			# if none of above conditions are satisfied, then line is a sequence of nucleotides so add the length of that line to nucleotide count to determine next seq length.
			else:
				nucleotide_count += len(line)

		# sort arrays containing lengths of each seqeuence. Determine min, max and avg lengths.
		if len(chrom_lengths) >= 1:
			chrom_lengths.sort()
			sum_chrom_lengths = 0
			seqAttributes["min_length_chromosomes"] = chrom_lengths[0]
			seqAttributes["max_length_chromosomes"] = chrom_lengths[-1]
			for lengths in chrom_lengths:
				sum_chrom_lengths += lengths
			seqAttributes["avg_length_chromosomes"] = sum_chrom_lengths / seqAttributes["chromosome_count"]

		if len(mt_lengths) >= 1:
			mt_lengths.sort()
			sum_mt_lengths = 0
			seqAttributes["min_length_mtDNA"] = mt_lengths[0]
			seqAttributes["max_length_mtDNA"] = mt_lengths[-1]
			for lengths in mt_lengths:
				sum_mt_lengths += lengths
			seqAttributes["avg_length_mtDNA"] = sum_mt_lengths / seqAttributes["mtDNA_count"]

		if len(plasmid_lengths) >= 1:
			plasmid_lengths.sort()
			sum_plasmid_lengths = 0
			seqAttributes["min_length_plasmids"] = plasmid_lengths[0]
			seqAttributes["max_length_plasmids"] = plasmid_lengths[-1]
			for lengths in plasmid_lengths:
				sum_plasmid_lengths += lengths
			seqAttributes["avg_length_plasmids"] = sum_plasmid_lengths / seqAttributes["plasmid_count"]

		if len(contig_lengths) >= 1:
			contig_lengths.sort()
			sum_contig_lengths = 0
			seqAttributes["min_length_contig"] = contig_lengths[0]
			seqAttributes["max_length_contig"] = contig_lengths[-1]
			for lengths in contig_lengths:
				sum_contig_lengths += lengths
			seqAttributes["avg_length_contig"] = sum_contig_lengths / seqAttributes["contig_count"]
	return seqAttributes



# Run in terminal to compile list of filepaths for unzipped gzfiles.
# ls -d "$PWD"/* >> ../fungi/code/filepaths.list

def populate_tables(filesToParse):
	for filePath in filesToParse:
		seqAttributes = parse_file(filePath)																						

		c.execute("UPDATE SPECIESDB SET chromosome_count=?, avg_length_chromosomes=?, max_length_chromosomes=?, min_length_chromosomes=?, contig_count=?, avg_length_contig=?, max_length_contig=?, min_length_contig=?, mtDNA_count=?, avg_length_mtDNA=?, max_length_mtDNA=?, min_length_mtDNA=?, plasmid_count=?, avg_length_plasmids=?, max_length_plasmids=?, min_length_plasmids=?, FILEPATH=? WHERE FILENAME=?;", (seqAttributes["chromosome_count"], seqAttributes["avg_length_chromosomes"], seqAttributes["max_length_chromosomes"], seqAttributes["min_length_chromosomes"], seqAttributes["contig_count"], seqAttributes["avg_length_contig"], seqAttributes["max_length_contig"], seqAttributes["min_length_contig"], seqAttributes["mtDNA_count"], seqAttributes["avg_length_mtDNA"], seqAttributes["max_length_mtDNA"], seqAttributes["min_length_mtDNA"], seqAttributes["plasmid_count"], seqAttributes["avg_length_plasmids"], seqAttributes["max_length_plasmids"], seqAttributes["min_length_plasmids"], seqAttributes["FILEPATH"], seqAttributes["FILENAME"]))
		conn.commit()

# function calls:
#create_table()

filesToParse = make_array_of_file_paths()


populate_tables(filesToParse)
conn.close()





