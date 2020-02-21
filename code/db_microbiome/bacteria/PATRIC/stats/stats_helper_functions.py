#!/usr/bin/env python

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
	if category == 'contig' or category == 'scaffold' or category == 'partial' or category == 'supercont' or category == 'unitig_':
		return True
	else:
		return False

def is_chromosome(category):
	category = category.lower()
	if category == 'chromosome' or category == 'complete' or category == 'nc_':
		return True
	else:
		return False


def determine_sequence_lengths(prev_dna_type, nucleotide_count, chrom_lengths, mt_lengths, plasmid_lengths, contig_lengths):
	if prev_dna_type == "":
		return
	elif prev_dna_type == "chromosome":
		chrom_lengths.append(nucleotide_count)
	elif prev_dna_type == "mitochondria":
		mt_lengths.append(nucleotide_count)
	elif prev_dna_type == "plasmid":
		plasmid_lengths.append(nucleotide_count)
	elif prev_dna_type == "contig":
		contig_lengths.append(nucleotide_count)
