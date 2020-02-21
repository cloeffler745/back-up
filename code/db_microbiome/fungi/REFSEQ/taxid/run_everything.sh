#!/bin/bash

zgrep -m 1 ">" ~/scratch/fungi/NCBI/*.gz | sed 's/^\/u\/home\/c\/cloeffle\/scratch\/fungi\/NCBI\///g' > filename.first_lines.txt

python match_taxid2filename_with_db_info.py

python add_last_11_entries.py




