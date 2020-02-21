import Levenshtein
import numpy as np
import random
import string

import sys

first = sys.argv[1]
second = sys.argv[2]

## Algorithm -------------------------------------------------------------------


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


print(edit_distance(first, second))
