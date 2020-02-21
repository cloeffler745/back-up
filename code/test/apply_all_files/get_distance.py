import Levenshtein
import numpy as np
import random
import string
import sys
import editdistance
import math

first = sys.argv[1]
second = sys.argv[2]

def edit_distance(s, t):
    """Edit distance of strings s and t. O(len(s) * len(t)). Prime example of a
    dynamic programming algorithm. To compute, we divide the problem into
    overlapping subproblems of the edit distance between prefixes of s and t,
    and compute a matrix of edit distances based on the cost of insertions,
    deletions, matches and mismatches.
    """
    prefix_matrix = np.zeros((len(s) + 1, len(t) + 1))
    prefix_matrix[:, 0] = list(range(len(s) + 1))
    prefix_matrix[0, :] = list(range(len(t) + 1))
    for i in range(1, len(s) + 1):
        for j in range(1, len(t) + 1):
            insertion = prefix_matrix[i, j - 1] + 1
            deletion = prefix_matrix[i - 1, j] + 1
            match = prefix_matrix[i - 1, j - 1]
            if s[i - 1] != t[j - 1]:
                match += 1  # -- mismatch
            prefix_matrix[i, j] = min(insertion, deletion, match)
    return int(prefix_matrix[i, j])

def make_dictionary(fasta):
    f = open(fasta)
    data = {}
    current_key = None
    for i in f:
        line = i.strip()
        if line == "":
                continue
        elif line[0] == ">": #headers are keys
            current_key = line
            data[current_key] = {""}
        else: #sequences are values
            data[current_key] = {list(data[current_key])[0] + line}
    f.close()
    return data #returns the dictionary

def align_seq(fasta1, fasta2):
    d1 = make_dictionary(fasta1)
    d2 = make_dictionary(fasta2) #make dictionaries of each of the fasta files
    matches = [] #for storing perfect matches
    final = []
    for key, value in d1.items():
        min_e = float("inf")
        min_key2 = ""
        for key2, value2 in d2.items():
            if key2 in matches:
                continue
            else:
		print(len(list(value)[0]))
		print(len(list(value2)[0]))
                e_d = editdistance.eval(list(value)[0], list(value2)[0])
                if e_d < min_e: #if the new edit distance is less than the current min, swappy!
                    min_e = e_d
                    min_key2 = key2
        final += ["(" + key + ", " + min_key2 + ") " + str(min_e) + "\n"]
    return final #returns a list of strings

print(align_seq(first, second))
